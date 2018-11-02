import React from "react";
import moment from "moment";

class Review extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <div className="style">
          <div className="headerWrapper">
            <div className="picture">
              <img src={this.props.review.picture} className="image" />
            </div>
            <div className="reviewWrapper">
              <div className="reviewName"> {this.props.review.first_name}</div>
              <div className="reviewDate">
                {moment(this.props.review.dateCreated).format("MMMM YYYY")}
              </div>
            </div>
          </div>
          <div className="overview">{this.props.review.overview}</div>
        </div>
      </div>
    );
  }
}

export default Review;
