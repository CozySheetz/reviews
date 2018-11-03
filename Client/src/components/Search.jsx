import React from 'react';
import Ratings from 'react-ratings-declarative';
import axios from 'axios';

class Search extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            searchWords: '',
            average: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
        this.handleGettingAverages = this.handleGettingAverages.bind(this); 
    }

    handleGettingAverages() {
        let idNumber = (window.location.search.slice(-3) * 1);
        console.log('id number getting averges', idNumber)
        axios.get('http://18.224.94.179/average', {
            params: {listingId: idNumber}
          }).then((data)=> 
            this.setState({average: data.data[0].averages})
             )
    }

    handleChange(e) {
        this.setState({searchWords:e.target.value})   
    }

    handleSubmit(e){
        e.preventDefault()
        let idNumber = (window.location.search.slice(-3) * 1);
        axios.post('http://18.224.94.179/search', {
        listingId: idNumber,
        words: this.state.searchWords,
        })
        .then((data) => this.props.search(data.data))
        .then(this.setState({searchWords:''}))
    }

componentDidMount() {
    this.handleGettingAverages(); 
}
render() {
 
    return  (
        <div className= 'search d-flex'>
         
           <div fontFamily= 'montreal' className='justify-content-start large-offset-1' > 
      <span  style={{ 'fontFamily': 'Montreal'}}> {this.props.reviewLength} Reviews </span> 
      <Ratings
        rating={Number(this.state.average)}>
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" widgetSpacings="2px" />
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" widgetSpacings="2px"/>
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" widgetSpacings="2px"/>
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" widgetSpacings="2px"/>
        <Ratings.Widget widgetRatedColor="#008489" widgetDimension="25px" widgetSpacings="2px"/>
      </Ratings>
         
          </div> 
    <form className= 'submit d-flex justify-content-end'
     onSubmit={this.handleSubmit}> 

      
    <input style={{'marginLeft': '120px'}} className='fill justify-self-right' type ='text' placeholder= 'Search reviews' value={this.state.searchWords} onChange={this.handleChange} />

    </form> 
        </div>
   )
   
}
}

export default Search; 