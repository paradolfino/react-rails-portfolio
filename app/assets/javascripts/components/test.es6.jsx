class Test extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {

        return (
            <div>
                {this.props.text.map((i,k)=> {
                    return (
                    <p key={k}>{i.content} <a href={i.git}>{i.directory}</a></p>
                    )
                })}
            </div>
        )
    }
};