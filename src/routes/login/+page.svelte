<script>
	let email = '';
	let password = '';

	function handleLogin() {
		// Add your login logic here
		console.log('Logging in with', email, password);
	}
</script>

<div class="flex flex-col gap-4 p-9 items-center justify-center">
	<h1 class="text-2xl font-bold">Login</h1>
	<form on:submit|preventDefault={handleLogin}>
		<input type="email" class="input" placeholder="Email" bind:value={email} required />
		<input type="password" class="input" placeholder="Password" bind:value={password} required />
		<br />
		<button type="submit" class="btn btn-sm variant-filled mx-auto">Login</button>
	</form>
</div>
