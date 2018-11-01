import React from 'react';
import Ratings from 'react-ratings-declarative';
import axios from 'axios';

class Search extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            searchWords: 'Search reviews',
            average: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
        this.handleGettingAverages = this.handleGettingAverages.bind(this); 
    }
    handleGettingAverages() {
        axios.get('/average')
             .then((data)=> 
            this.setState({average: data.data[0].averages})
             )
    }

    handleChange(e) {
        this.setState({searchWords:e.target.value})   
    }

    handleSubmit(e){
        e.preventDefault()
        axios.post('/search', {
        words: this.state.searchWords
        })
        .then((data) => this.props.search(data.data))
        .then(this.setState({searchWords:''}))
    }

componentDidMount() {
    this.handleGettingAverages(); 
}
render() {
 
    return  (
        <div className= 'search'>
         <span className = 'justify-self-center'>
           <div className="starContainer" fontFamily= 'montreal'> 
      <span className= 'fontFamily:montreal'> {this.props.reviewLength} Reviews </span> 
      <Ratings
        rating={Number(this.state.average)}
        widgetSpacings="4px"
        className="col-5 float-right"
      >
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" />
      </Ratings>
          </div>
         <div> 

         </div>
          </span> 
    <form className= 'submit d-flex justify-content-end'
     onSubmit={this.handleSubmit}
     > 
     <div className= 'justify-self-right'>
    <input className='fill justify-self-right' type ='text' value={this.state.searchWords} onChange={this.handleChange} />
         </div> 
    </form> 
        </div>
   )
   
}
}

export default Search; 