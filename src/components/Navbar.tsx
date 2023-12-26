import React from 'react';

export default function Navbar() {
    return (
        <nav className="top-sticky">
            <p className="top-name">Stock Market Simulation</p>
            <ul className="top-links">
                <li className="top-link">Home</li>
                <li className="top-link">About</li>
                <li className="top-link">GitHub</li>
            </ul>
        </nav>
    );
}
