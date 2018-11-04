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
        var path = window.location.href;
        var splits = path.split('/');
        var id = parseInt(splits[splits.length - 1]);
        axios.get(`/rating/${id}`)
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

