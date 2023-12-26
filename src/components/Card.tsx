import * as React from 'react';

interface CardProps {
    title: string;
    description: string;
    iconName?: string;
}

export class Card extends React.Component<CardProps> {
    render() {
        return (
            <div className="row">
                <div className="column">
                    <div className="card">
                        <h1>{this.props.title}</h1>
                        <p>{this.props.description}</p>
                    </div>
                </div>
            </div>
        );
    }
}
