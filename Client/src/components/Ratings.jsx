import React from 'react';
import Rating from './Rating.jsx';
import axios from 'axios';

class Ratings extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            reviews: []
        }
        this.handleGettingAverages = this.handleGettingAverages.bind(this);
    }

    handleGettingAverages() {
        let idNumber = (window.location.search.slice(-3) * 1);
        axios.get('http://18.224.94.179/rating',{
            params: {listingId: idNumber}
          })
            .then((data) => {
                this.setState({ reviews: data.data });
            })
    }

    componentDidMount() {
        this.handleGettingAverages();
    }

    render() {
        return (
            <div>
                <Rating ratings={this.state.reviews} />
            </div>
        )
    }
}

export default Ratings;

