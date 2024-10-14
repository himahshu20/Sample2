import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import React, { useEffect, useState } from 'react';

const CampaignList = () => {
    const [campaigns, setCampaigns] = useState([]);

    useEffect(() => {
        // Fetch campaigns from the API
        const fetchCampaigns = async () => {
            try {
                const response = await fetch('/campaignsList'); // Update this to your actual API endpoint
                const data = await response.json();
                setCampaigns(data);
            } catch (error) {
                console.error("Error fetching campaigns:", error);
            }
        };

        fetchCampaigns();
    }, []);

    return (
        
        <div className="container mx-auto py-12">
            <h2 className="font-semibold text-xl text-gray-800 leading-tight">Campaign List</h2>

            <table className="table-auto w-full mt-4">
                <thead>
                    <tr className="bg-gray-100">
                        <th className="px-4 py-2">Campaign Name</th>
                        <th className="px-4 py-2">Subject</th>
                        <th className="px-4 py-2">Body</th>
                        <th className="px-4 py-2">Recipient Count</th>
                        <th className="px-4 py-2">Created At</th>
                    </tr>
                </thead>
                <tbody>
                    {campaigns.length > 0 ? (
                        campaigns.map((campaign) => (
                            <tr key={campaign.id}>
                                <td className="border px-4 py-2">{campaign.name}</td>
                                <td className="border px-4 py-2">{campaign.subject}</td>
                                <td className="border px-4 py-2">{campaign.body.substring(0, 50) + (campaign.body.length > 50 ? '...' : '')}</td>
                                <td className="border px-4 py-2">{campaign.recipient_count}</td>
                                <td className="border px-4 py-2">{campaign.created_at}</td>
                            </tr>
                        ))
                    ) : (
                        <tr>
                            <td colSpan="5" className="border px-4 py-2 text-center">No campaigns found.</td>
                        </tr>
                    )}
                </tbody>
            </table>
        </div>
    );
};

export default CampaignList;
