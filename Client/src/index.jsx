import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
// import Review from './components/Review.jsx'
import Rating from './components/Rating.jsx'


class App extends React.Component {
    constructor (props){
        super(props)
        this.state = {
            // reviews: [],
            users: []
        }
        // this.findReviews = this.findReviews.bind(this);
        this.getAverage = this.getAverage.bind(this);
        this.getAccuracyRating  = this.getAccuracyRating.bind(this);
        this.getUserName = this.getUserName.bind(this);
    }

    // findReviews() {
    //     axios.get('/rating')
    //          .then((data)=> 
    //          this.setState({reviews: data.data})
    //          )       
    // }

    getAverage(array) {
      return array.reduce((a,b) => {
          return (a+b)/array.length
      })
    }

    getAccuracyRating(){

    }

    getUserName(){

    axios.get('/user')
         .then((data) =>{
             this.setState({users: data.data})
         })

    }

    componentDidMount (){
        // this.findReviews()
        this.getUserName()
    }

    render() {
        return (

            <div className="app">
        <header className="navbar"><h1>Reviews</h1></header> 
        
        <div className="main">

        {/* <h1> {this.state.reviews.map((item) => <li>{item.overview}</li>)}</h1> */}
         
        <Reviews  rev ={this.state.users}/>
        </div>
      </div>
            

    )

    }
}

ReactDOM.render(<App/>, document.getElementById('root'))