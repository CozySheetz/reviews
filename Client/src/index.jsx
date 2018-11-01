import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
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
    this.getUserInformation = this.getUserInformation.bind(this);
    this.handleSearch =this.handleSearch.bind(this);
  }


  handleGettingAverages() {
    axios.get("/rating").then(data => {
     this.setState({averages: data.data
    });
    });
  }

  getUserInformation() {
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
        </header>

        <div className="main container w-50">
    
          <Search  search={this.handleSearch} reviewLength={this.state.reviews.length}/> 
          <Ratings averages={this.state.averages}  /> 
          <Reviews rev={this.state.filtered === false ? this.state.reviews: this.state.filteredReview} />

        </div>
      </div>
    );
  }
}

ReactDOM.render(<App/>, document.getElementById('reviews-app'))