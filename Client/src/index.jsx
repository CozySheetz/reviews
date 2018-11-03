import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
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
    let idNumber = window.location.search.slice(-3)
    axios.get( "/rating", {
      params: {listingId: idNumber}
    }).then(data => {
     this.setState({averages: data.data
    });
    });
  }

  getUserInformation() {
    let idNumber = (window.location.search.slice(-3) * 1); 
    axios.get("/user",{
      params: {listingId: idNumber}
    }).then(data => {
      this.setState({reviews: data.data});
    });
  }

  handleSearch(filter) {
   this.setState({filteredReview: filter, filtered: true});
  
  }

  componentDidMount() {
    this.getUserInformation();
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

// window.Reviews = App; 

ReactDOM.render(<App/>, document.getElementById('reviews-app'))