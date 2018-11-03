import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Reviews from './components/Reviews.jsx';
import Ratings from './components/Ratings.jsx';
import Search from './components/Search.jsx';
class App extends React.Component {
  constructor() {
    super();
    this.state = {
      reviews: [],
      averages: [],
      filtered: false,
      filteredReviews : [],
      id: ''
    };
    this.getAverages = this.getAverages.bind(this);
    this.getUserInformation = this.getUserInformation.bind(this);
    this.handleSearch =this.handleSearch.bind(this);
    this.getIdFromURL= this.getIdFromURL.bind(this); 
  }
  
  async componentDidMount ()  {
      await this.getIdFromURL(); 
      this.getUserInformation();
      this.getAverages(); 
  }

  getIdFromURL() {
    var path = window.location.href;
    var splits = path.split('/');
    var id = parseInt(splits[splits.length - 1]);
    this.setState({id}); 
  }
  
  getAverages() {
    axios.get(`/rating/${this.state.id}}`).then(({data}) => {
      this.setState({averages: data});
    });
  }

  getUserInformation() {
    axios.get(`/user/${this.state.id}`).then(({data})=> {
      this.setState({reviews: data});
    });
  }

  handleSearch(filteredReviews) {
   this.setState({filteredReviews, filtered: true});
  }

  render() {
    return (
      <div className="app">
        <div className="main container w-50">
          <Search  search={this.handleSearch} reviewLength={this.state.reviews.length}/> 
          <Ratings averages={this.state.averages}  /> 
          <Reviews rev={this.state.filtered === false ? this.state.reviews: this.state.filteredReviews} />
        </div>
      </div>
    );
  }
}


ReactDOM.render(<App/>, document.getElementById('reviews-app'))