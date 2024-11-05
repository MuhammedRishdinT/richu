const music = require('./plugins/music'); // Ensure this line is present

client.on('message', async (message) => {
    const command = message.body.trim();

    if (command.startsWith('.')) {
        const args = command.split(' ');
        const commandName = args[0];

        // Check for music commands
        if (commandName === '.song' || commandName === '.play') {
            return music.execute(client, message, args);
        }

        // Other command handlers can go here
    }
});
