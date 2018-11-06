import React from 'react';
import Review from './Review.jsx';


class Reviews extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
           
            reviewPage: 1
        }
        this.handleClicks = this.handleClicks.bind(this);
    }
  
    handleClicks (event) {
        this.setState({reviewPage: Number(event.target.value)}); 
        window.scrollTo(200,0);
    }
    
    renderButtons() {
    
        let count = Math.ceil(this.props.rev.length / 6);
        var pages = []; 
        for (let i = 0; i < count; i++) {
            pages.push(i);
            
        }
       return  pages.map((page) => {
            if (page+1 === this.state.reviewPage) {
                var background = '#008489';
                var fontColor = 'white';
            }

        return  (<button 
                    style={{ 'fontFamily': 'Montse}rrat, sans-serif', 'borderRadius' : '50%', 'background': background, 'color': fontColor, 'margin': '10px'}} 
                    onClick={this.handleClicks} 
                    value={page+1}> {page+1} 
        </button> )
    })
}


 

    render() {
        return (
            <div>
            <ul>
            </ul>
            <div>
                <div>

                    {this.props.rev.slice((this.state.reviewPage-1) * 6, this.state.reviewPage *6).map((item) => (
                        <Review review={item} />
                    ))}
    
                </div>
                {this.renderButtons()}
            </div>
            </div>
        )
    }


}

export default Reviews;