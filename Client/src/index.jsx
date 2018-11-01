import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
// import Review from './components/Review.jsx'
import Rating from './components/Rating.jsx';
import Ratings from './components/Ratings.jsx';
import Search from './components/Search.jsx';


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      reviews: [],
      averages: [],
      filtered: false,
      filteredReview : []
    };
    this.handleGettingAverages = this.handleGettingAverages.bind(this);
    this.getUserName = this.getUserName.bind(this);
    this.handleSearch =this.handleSearch.bind(this);
  }


  handleGettingAverages() {
    axios.get("/rating").then(data => {
     this.setState({averages: data.data
    });
    });
  }

  getUserName() {
    axios.get("/user").then(data => {
      this.setState({reviews: data.data});
    });
  }
  handleSearch(filter) {
   this.setState({filteredReview: filter, filtered: true})
  
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

        <div className="main">
          <Search search={this.handleSearch}/> 
    
         <Ratings
          averages={this.state.averages}  /> 
          <Reviews rev={this.state.filtered === false ? this.state.reviews: this.state.filteredReview} />

        </div>
      </div>
    );
  }
}

ReactDOM.render(<App/>, document.getElementById('root'))