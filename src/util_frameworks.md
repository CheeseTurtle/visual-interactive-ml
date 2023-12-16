# ML Frameworks {.pagetoc-exclude}


## C/C++ Frameworks

#### DeepC {.pagetoc-exclude}

```info
:: Tagline: vendor independent TinyML deep learning library, compiler and inference framework microcomputers and micro-controllers
:: Repository: <https://github.com/ai-techsystems/deepC>
```
Repository README.md contains links to colab notebook and other reference material.

> The deepC is a vendor independent deep learning library, compiler and inference framework designed for small form-factor devices including μControllers, IoT and Edge devices.

{{#tile
:: ![](https://github.com/ai-techsystems/deepC/blob/master/misc/dnnCompilerArch.jpg?raw=true)
}}


## Python Frameworks


#### OpenPrompt

```info
:::: ![](assets/2023-12-15-15-52-50.png)
:: Tagline: An Open-Source Framework for Prompt-Learning.
:: Repository: <https://github.com/thunlp/OpenPrompt>
```

See also [UltraChat](https://github.com/thunlp/UltraChat).

{{#tile
:: ![](assets/2023-12-15-15-51-15.png)
}}

## Julia Frameworks

#### Flux

```info
:::: ![](assets/2023-12-15-15-47-00.png)
:: Tagline: The Elegant Machine Learning Stack
:: Website: <https://fluxml.ai/>
:: Repository: <https://github.com/FluxML/Flux.jl>
```

> Flux is a 100% pure-Julia stack and provides lightweight abstractions on top of Julia's native GPU and AD support. It makes the easy things easy while remaining fully hackable.

{{#tile
:: ![](assets/2023-12-15-15-46-51.png)
}}


#### MLJ

```info
:::: ![](assets/2023-12-15-15-48-22.png)
:: Tagline: A Julia machine learning framework
:: Learning guides: <https://alan-turing-institute.github.io/MLJ.jl/dev/learning_mlj/>
:: Documentation: <https://alan-turing-institute.github.io/MLJ.jl/dev/>
:: Cheatsheet: <https://alan-turing-institute.github.io/MLJ.jl/dev/mlj_cheatsheet/>
:: Repository: <https://github.com/alan-turing-institute/MLJ.jl>
```

> MLJ (Machine Learning in Julia) is a toolbox written in Julia providing a common interface and meta-algorithms for selecting, tuning, evaluating, composing and comparing about 200 machine learning models written in Julia and other languages.

Focus is mainly not on Deep Learning techniques.


## Other Languages


## Framework Interop



## Reinforcement Learning initiatives

#### DeepRTS
```info
:: Tagline: A Real-Time-Strategy game for Deep Learning research
:: Repository: <https://github.com/cair/deep-rts>
```

> DeepRTS is a high-performance Real-TIme strategy game for Reinforcement Learning research. It is written in C++ for performance, but provides an python interface to better interface with machine-learning toolkits. Deep RTS can process the game with over 6 000 000 steps per second and 2 000 000 steps when rendering graphics. In comparison to other solutions, such as StarCraft, this is over 15 000% faster simulation time running on Intel i7-8700k with Nvidia RTX 2080 TI.
> 
> The aim of Deep RTS is to bring a more affordable and sustainable solution to RTS AI research by reducing computation time.

{{#tile 
:: ![](https://github.com/cair/deep-rts/blob/main/docs/images/deeprts_gif.gif?raw=true)
}}

#### Google Deepmind's `lab`

```info
:::: ![](assets/2023-12-15-15-59-12.png)
:: Tagline: A customisable 3D platform for agent-based AI research
:: Repository: <https://github.com/google-deepmind/lab>
```

> DeepMind Lab is a 3D learning environment based on id Software's [Quake III Arena](https://github.com/id-Software/Quake-III-Arena) via [ioquake3](https://github.com/ioquake/ioq3) and [other open source software](https://github.com/google-deepmind/lab?tab=readme-ov-file#upstream-sources).
>
> DeepMind Lab provides a suite of challenging 3D navigation and puzzle-solving tasks for learning agents. Its primary purpose is to act as a testbed for research in artificial intelligence, especially deep reinforcement learning.

(Click the images below to watch each of the three demo videos on YouTube.)

{{#tile
:: <a href="https://www.youtube.com/watch?v=M40rN7afngY" rel="nofollow"><img src="https://camo.githubusercontent.com/56f728a666f9070f8110759bc76b782258ac8bd49db57b38e54591eca0e35a5e/687474703a2f2f696d672e796f75747562652e636f6d2f76692f4d3430724e3761666e67592f302e6a7067" alt="DeepMind Lab - Nav Maze Level 1" width="240" height="180" border="10" data-canonical-src="http://img.youtube.com/vi/M40rN7afngY/0.jpg" style="max-width: 100%;"></a>
:: <a href="https://www.youtube.com/watch?v=gC_e8AHzvOw" rel="nofollow"><img src="https://camo.githubusercontent.com/7185415a6d42b83ea8b15dad24bff98a52a93827615c4ef6ba8b04c9f8574022/687474703a2f2f696d672e796f75747562652e636f6d2f76692f67435f653841487a764f772f302e6a7067" alt="DeepMind Lab - Stairway to Melon Level" width="240" height="180" border="10" data-canonical-src="http://img.youtube.com/vi/gC_e8AHzvOw/0.jpg" style="max-width: 100%;"></a>
:: <a href="https://www.youtube.com/watch?v=7syZ42HWhHE" rel="nofollow"><img src="https://camo.githubusercontent.com/28bbab3cd4e8ec65c39ae98e5c041aa2e07ca5a48f2a2b7452e9a1d135e434f9/687474703a2f2f696d672e796f75747562652e636f6d2f76692f3773795a343248576848452f302e6a7067" alt="DeepMind Lab - Laser Tag Space Bounce Level (Hard)" width="240" height="180" border="10" data-canonical-src="http://img.youtube.com/vi/7syZ42HWhHE/0.jpg" style="max-width: 100%;"></a>
}}


### Gymnasium

```info
:::: ![](assets/2023-12-15-16-05-48.png)
:: Tagline: An API standard for single-agent reinforcement learning environments, with popular reference environments and related utilities
:: Documentation: <https://gymnasium.farama.org/>
:: Repository: <https://github.com/Farama-Foundation/Gymnasium>
```

Successor to OpenAI's Gym ([website](https://www.gymlibrary.dev/), [repository](https://github.com/openai/gym)).

> Gymnasium includes the following families of environments along with a wide variety of third-party environments
> 
> [Classic Control](https://gymnasium.farama.org/environments/classic_control/) - These are classic reinforcement learning based on real-world problems and physics.
> 
> [Box2D](https://gymnasium.farama.org/environments/box2d/) - These environments all involve toy games based around physics control, using box2d based physics and PyGame-based rendering
> 
> [Toy Text](https://gymnasium.farama.org/environments/toy_text/) - These environments are designed to be extremely simple, with small discrete state and action spaces, and hence easy to learn. As a result, they are suitable for debugging implementations of reinforcement learning algorithms.
> 
> [MuJoCo](https://gymnasium.farama.org/environments/mujoco/) - A physics engine based environments with multi-joint control which are more complex than the Box2D environments.
> 
> [Atari](https://gymnasium.farama.org/environments/atari/) - A set of 57 Atari 2600 environments simulated through Stella and the Arcade Learning Environment that have a high range of complexity for agents to learn.
> 
> [Third-party](https://gymnasium.farama.org/environments/third_party_environments/) - A number of environments have been created that are compatible with the Gymnasium API. Be aware of the version that the software was created for and use the apply_env_compatibility in gymnasium.make if necessary.


