<!-- src/routes/register/+page.svelte -->
<script>
	let email = '';
	let password = '';
	let confirmPassword = '';

	function handleRegister() {
		// Add your registration logic here
		if (password !== confirmPassword) {
			alert('Passwords do not match');
			return;
		}
		console.log('Registering with', email, password);
	}
</script>

<h1>Register</h1>
<form on:submit|preventDefault={handleRegister}>
	<label>
		Email:
		<input type="email" bind:value={email} required />
	</label>
	<br />
	<label>
		Password:
		<input type="password" bind:value={password} required />
	</label>
	<br />
	<label>
		Confirm Password:
		<input type="password" bind:value={confirmPassword} required />
	</label>
	<br />
	<button type="submit">Register</button>
</form>
