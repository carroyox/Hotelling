//$('.cinema-seats .seat').on('click', function () {
//    $(this).toggleClass('active');
//});

class App extends React.Component {

    constructor() {
        super();
        this.state = {
            seat: [
                'A1', 'A2', 'A3',
                'A4', 'A5', 'A6',
                'A7', 'A8', 'A9', 'A10', 'B1', 'B2', 'B3',
                'B4', 'B5', 'B6',
                'B7', 'B8', 'B9', 'B10', 'C1', 'C2', 'C3',
                'C4', 'C5', 'C6',
                'C7', 'C8', 'C9', 'C10', 'D1', 'D2', 'D3',
                'D4', 'D5', 'D6',
                'D7', 'D8', 'D9', 'D10', 'E1', 'E2', 'E3',
                'E4', 'E5', 'E6',
                'E7', 'E8', 'E9', 'E10',
            ],
            seatAvailable: [
                'A1', 'A2', 'A3',
                'A4', 'A5', 'A6',
                'A7', 'A8', 'A9', 'A10', 'B1', 'B2', 'B3',
                'B4', 'B5', 'B6',
                'B7', 'B8', 'B9', 'B10', 'C1', 'C2', 'C3',
                'C4', 'C5', 'C6',
                'C7', 'C8', 'C9', 'C10', 'D1', 'D2', 'D3',
                'D4', 'D5', 'D6',
                'D7', 'D8', 'D9', 'D10', 'E1', 'E2', 'E3',
                'E4', 'E5', 'E6',
                'E7', 'E8', 'E9', 'E10',
            ],
            seatReserved: []
        }
    }

    onClickData(seat) {
        if (this.state.seatReserved.indexOf(seat) > -1) {
            this.setState({
                seatAvailable: this.state.seatAvailable.concat(seat),
                seatReserved: this.state.seatReserved.filter(res => res != seat)
            })
        } else {
            this.setState({
                seatReserved: this.state.seatReserved.concat(seat),
                seatAvailable: this.state.seatAvailable.filter(res => res != seat)
            })
        }
    }

    render() {
        return (
            <div>
                <h1>Seat Reservation System</h1>
                <DrawGrid
                    seat={this.state.seat}
                    available={this.state.seatAvailable}
                    reserved={this.state.seatReserved}
                    onClickData={this.onClickData.bind(this)}
                />
            </div>
        )
    }
}

class DrawGrid extends React.Component {
    render() {
        return (
            <div className="container">
                <h2></h2>
                <table className="grid">
                    <tbody>
                        <tr>
                            {this.props.seat.map(row =>
                                <td
                                    className={this.props.reserved.indexOf(row) > -1 ? 'reserved' : 'available'}
                                    key={row} onClick={e => this.onClickSeat(row)}>{row} </td>)}
                        </tr>
                    </tbody>
                </table>

                <AvailableList available={this.props.available} />
                <ReservedList reserved={this.props.reserved} />
            </div>
        )
    }

    onClickSeat(seat) {
        this.props.onClickData(seat);
    }
}

class AvailableList extends React.Component {
    render() {
        const seatCount = this.props.available.length;
        return (
            <div className="left">
                <h4>Available Seats: ({seatCount == 0 ? 'No seats available' : seatCount})</h4>
                <ul>
                    {this.props.available.map(res => <li key={res} >{res}</li>)}
                </ul>
            </div>
        )
    }
}

class ReservedList extends React.Component {
    render() {
        return (
            <div className="right">
                <h4>Reserved Seats: ({this.props.reserved.length})</h4>
                <ul>
                    {this.props.reserved.map(res => <li key={res} >{res}</li>)}
                </ul>
            </div>
        )
    }
}


ReactDOM.render(<App name="Rachelle" />, document.getElementById('app'));