import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
// import Review from './components/Review.jsx'
import Rating from './components/Rating.jsx'
import Ratings from './components/Ratings.jsx'


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      users: [],
      averages: []
    };
    this.handleGettingAverages = this.handleGettingAverages.bind(this);
    this.getUserName = this.getUserName.bind(this);
  }


  handleGettingAverages() {
    // console.log("in averages");
    axios.get("/rating").then(data => {
        // console.log(data.data[0])
     this.setState({averages: data.data
    });
    });
  }

  getUserName() {
    axios.get("/user").then(data => {
      this.setState({users: data.data});
    });
  }

  componentDidMount() {
    this.getUserName();
    this.handleGettingAverages(); 
  }

  render() {
    return (
      <div className="app">
        <header className="navbar">
          <h1>Reviews</h1>
        </header>
          {/* {this.state.averages.map((rating)=> <h2> {rating.Accuracy} {rating.Cleanliness} </h2>)} */}

        <div className="main">
          {/* <h1> {this.state.reviews.map((item) => <li>{item.overview}</li>)}</h1> */}
          {/* <Ratings rating={this.state.ratings}/> */}
          {/* {this.state.averages.map((rating)=> <h2> {rating.Accuracy} {rating.Cleanliness} </h2>)} */}
         <Ratings
          averages={this.state.averages}  /> 
          {/* <Ratings /> */}
          <Reviews rev={this.state.users} />
        </div>
      </div>
    );
  }
}

ReactDOM.render(<App/>, document.getElementById('root'))