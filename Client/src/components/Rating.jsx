import React from 'react';
import StarRatingComponent from 'react-star-rating-component'
class Rating extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: []
    }; 
    this.renderStarIconHalf = this.renderStarIconHalf.bind(this);
    // this.handleGettingRatingValue = this.handleGettingRatingValue.bind(this);
  }

  // handleGettingRatingValue () {
  //   this.setState({rating: this.props.averages})
  // }


  // onStarClick(nextValue, prevValue, name) {
  //   this.setState({rating: nextValue});
  // }
  renderStarIconHalf(nextValue, prevValue, name) {
    // this.setState({ rating: prevValue });
    const xPos =
      (e.pageX - e.currentTarget.getBoundingClientRect().left) /
      e.currentTarget.offsetWidth;

    if (xPos <= 0.5) {
      nextValue -= 0.5;
    }

    this.setState({ rating: nextValue });
  }


  render() {
    const { rating } = this.state;

    return (
      <div className="star">
        {/* <h2>Rating from state: {rating}</h2> */}
        {/* {this.state.rating.map((rating) => {
          
        })} */}
        <div>
        <StarRatingComponent
          name="rate1"
          starCount={5}
          value={rating}
          // renderStarIconHalf={Function(nextValue, prevValue, name)}
          starColor="teal"
         
        />
        </div>
        <div>
        {/* <StarRatingComponent
          name="rate1"
          starCount={5}
          value={rating}
          // renderStarIconHalf={Function(nextValue, prevValue, name)}
          starColor="teal"
         
        />
        </div>
        <div>
        <StarRatingComponent
          name="rate1"
          starCount={5}
          value={rating}
          // renderStarIconHalf={Function(nextValue, prevValue, name)}
          starColor="teal"
         
        /> */}
        </div>
        
      </div>


    );
  }
}
       

export default Rating;