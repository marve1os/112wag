const taskForm = document.getElementById('task-form');
const taskInput = document.getElementById('task-input');
const taskList = document.getElementById('task-list');

taskForm.addEventListener('submit', addTask);

function addTask(e) {
    e.preventDefault();
    const taskText = taskInput.value;
    if (taskText.trim() !== '') {
        const task = document.createElement('tr');
        task.innerHTML = `
            <td>${Math.floor(Math.random() * 100)}</td>
            <td>${taskText}</td>
            <td><button class="delete-btn">Delete</button></td>
        `;
        taskList.appendChild(task);
        taskInput.value = '';
    } else {
        alert('Please enter a task!');
    }
}


