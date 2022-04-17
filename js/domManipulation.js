const container = document.querySelector('#container');

const content = document.createElement('div');
content.classList.add('content');
content.textContent = 'This is the glorious text-content!';
container.appendChild(content);

const para = document.createElement('p');
para.textContent = `Hey I'm red!`;
para.style.color = 'red';
container.appendChild(para);

const blueH = document.createElement('h3');
blueH.textContent = `Hey I'm blue h3!`;
blueH.style.color = 'blue';
container.appendChild(blueH);

const blackDiv = document.createElement('div');
blackDiv.style.border = '2px solid black';
blackDiv.style.backgroundColor = 'pink'; // must use camelCase
blackDiv.style.height = '15em';

const anotherH = document.createElement('h1');
anotherH.textContent = `I'm in a div`;
blackDiv.appendChild(anotherH);

const anotherP = document.createElement('p');
anotherP.textContent = 'ME TOO!';
blackDiv.appendChild(anotherP);

container.appendChild(blackDiv); // add in after modifications?