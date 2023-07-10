# Peer-to-Peer Car Rental Application

This repository contains the code for a user-friendly cross-platform application developed using Flutter. The application aims to provide a peer-to-peer car rental service, offering convenience and eliminating the need for traditional rental services. It allows users to easily rent cars from individuals within their community.

### Backend Repo: 
https://github.com/sandeepkrai/PeerCar-Backend

## Features

<li>Cross-platform application developed using Flutter, ensuring compatibility with both iOS and Android devices.</li><li>Robust backend system implemented with Node.js, creating an efficient API layer for various functionalities, including user authentication, car management, reservations, and secure payments.</li><li>MySQL used for structured data storage and retrieval, ensuring effective organization of user profiles, car details, reservations, and transactions.</li><li>In progress: Web frontend development using HBS templating engine to expand the project's reach and usability beyond mobile devices.</li>


## Setup Instructions

To set up the development environment and run the project locally, follow these steps:
<p>Clone this repository to your local machine.</p><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>bash</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-bash">git <span class="hljs-built_in">clone</span> https://github.com/sandeepkrai/Car-Rental-Frontend/
</code></div></div></pre><p>Install the necessary dependencies for the Flutter application. Refer to the official Flutter documentation for instructions on how to set up Flutter and its dependencies: <a href="https://flutter.dev/docs/get-started/install" target="_new">Flutter Documentation</a></p><p>Install the required Node.js packages for the backend system. Navigate to the <code>backend</code> directory and run the following command:</p><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs">npm install
</code></div></div></pre><p>Set up the MySQL database by importing the provided SQL dump file. Ensure you have MySQL installed and create a new database. Then, import the SQL dump file using the following command:</p><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>css</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-css">mysql -u username -<span class="hljs-selector-tag">p</span> database_name &lt; database_dump<span class="hljs-selector-class">.sql</span>
</code></div></div></pre><p>Configure the backend API connection to the MySQL database. Open the <code>backend/config.js</code> file and update the MySQL connection details accordingly.</p><p>Run the backend server. In the <code>backend</code> directory, execute the following command:</p><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>sql</span></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-sql">npm <span class="hljs-keyword">start</span>
</code></div></div></pre><p>Run the Flutter application using your preferred IDE or by executing the following command in the root directory of the Flutter project:</p><pre><div class="bg-black rounded-md mb-4"><div class="flex items-center relative text-gray-200 bg-gray-800 px-4 py-2 text-xs font-sans justify-between rounded-t-md"></div><div class="p-4 overflow-y-auto"><code class="!whitespace-pre hljs language-arduino">flutter run
</code></div></div></pre>


## Contributions

Contributions to this project are welcome. If you find any bugs or have suggestions for improvement, please feel free to open an issue or submit a pull request.


## License

This project is licensed under the <a href="LICENSE" target="_new">MIT License</a>. Feel free to use and modify the code according to your needs.
