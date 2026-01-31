## 2026-01-31 - Build Script Inefficiency
**Learning:** The --- Setting up documentation build environment ---
--- Installing package and dependencies ---
Requirement already satisfied: pip in ./.doc-venv/lib/python3.12/site-packages (26.0)
Requirement already satisfied: mkdocs-material==9.6.14 in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 1)) (9.6.14)
Requirement already satisfied: mkdocs-redirects==1.2.2 in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 2)) (1.2.2)
Requirement already satisfied: a2a-sdk in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 3)) (0.3.22)
Requirement already satisfied: mike in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 4)) (2.1.3)
Requirement already satisfied: mkdocs-macros-plugin in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 5)) (1.5.0)
Requirement already satisfied: sphinx in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 6)) (9.1.0)
Requirement already satisfied: furo in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 7)) (2025.12.19)
Requirement already satisfied: myst-parser in ./.doc-venv/lib/python3.12/site-packages (from -r requirements-docs.txt (line 8)) (5.0.0)
Requirement already satisfied: babel~=2.10 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (2.17.0)
Requirement already satisfied: backrefs~=5.7.post1 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (5.9)
Requirement already satisfied: colorama~=0.4 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (0.4.6)
Requirement already satisfied: jinja2~=3.1 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (3.1.6)
Requirement already satisfied: markdown~=3.2 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (3.10.1)
Requirement already satisfied: mkdocs-material-extensions~=1.3 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (1.3.1)
Requirement already satisfied: mkdocs~=1.6 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (1.6.1)
Requirement already satisfied: paginate~=0.5 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (0.5.7)
Requirement already satisfied: pygments~=2.16 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (2.19.2)
Requirement already satisfied: pymdown-extensions~=10.2 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (10.20.1)
Requirement already satisfied: requests~=2.26 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (2.32.5)
Requirement already satisfied: MarkupSafe>=2.0 in ./.doc-venv/lib/python3.12/site-packages (from jinja2~=3.1->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (3.0.3)
Requirement already satisfied: click>=7.0 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (8.3.1)
Requirement already satisfied: ghp-import>=1.0 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (2.1.0)
Requirement already satisfied: mergedeep>=1.3.4 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (1.3.4)
Requirement already satisfied: mkdocs-get-deps>=0.2.0 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (0.2.0)
Requirement already satisfied: packaging>=20.5 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (26.0)
Requirement already satisfied: pathspec>=0.11.1 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (1.0.4)
Requirement already satisfied: pyyaml-env-tag>=0.1 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (1.1)
Requirement already satisfied: pyyaml>=5.1 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (6.0.3)
Requirement already satisfied: watchdog>=2.0 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (6.0.0)
Requirement already satisfied: charset_normalizer<4,>=2 in ./.doc-venv/lib/python3.12/site-packages (from requests~=2.26->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (3.4.4)
Requirement already satisfied: idna<4,>=2.5 in ./.doc-venv/lib/python3.12/site-packages (from requests~=2.26->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (3.11)
Requirement already satisfied: urllib3<3,>=1.21.1 in ./.doc-venv/lib/python3.12/site-packages (from requests~=2.26->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (2.6.3)
Requirement already satisfied: certifi>=2017.4.17 in ./.doc-venv/lib/python3.12/site-packages (from requests~=2.26->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (2026.1.4)
Requirement already satisfied: google-api-core>=1.26.0 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk->-r requirements-docs.txt (line 3)) (2.29.0)
Requirement already satisfied: httpx-sse>=0.4.0 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk->-r requirements-docs.txt (line 3)) (0.4.3)
Requirement already satisfied: httpx>=0.28.1 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk->-r requirements-docs.txt (line 3)) (0.28.1)
Requirement already satisfied: protobuf>=5.29.5 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk->-r requirements-docs.txt (line 3)) (6.33.5)
Requirement already satisfied: pydantic>=2.11.3 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk->-r requirements-docs.txt (line 3)) (2.12.5)
Requirement already satisfied: importlib-metadata in ./.doc-venv/lib/python3.12/site-packages (from mike->-r requirements-docs.txt (line 4)) (8.7.1)
Requirement already satisfied: importlib-resources in ./.doc-venv/lib/python3.12/site-packages (from mike->-r requirements-docs.txt (line 4)) (6.5.2)
Requirement already satisfied: pyparsing>=3.0 in ./.doc-venv/lib/python3.12/site-packages (from mike->-r requirements-docs.txt (line 4)) (3.3.2)
Requirement already satisfied: verspec in ./.doc-venv/lib/python3.12/site-packages (from mike->-r requirements-docs.txt (line 4)) (0.1.0)
Requirement already satisfied: hjson in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-macros-plugin->-r requirements-docs.txt (line 5)) (3.1.0)
Requirement already satisfied: python-dateutil in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-macros-plugin->-r requirements-docs.txt (line 5)) (2.9.0.post0)
Requirement already satisfied: super-collections>=0.6.2 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-macros-plugin->-r requirements-docs.txt (line 5)) (0.6.2)
Requirement already satisfied: termcolor in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-macros-plugin->-r requirements-docs.txt (line 5)) (3.3.0)
Requirement already satisfied: sphinxcontrib-applehelp>=1.0.7 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (2.0.0)
Requirement already satisfied: sphinxcontrib-devhelp>=1.0.6 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (2.0.0)
Requirement already satisfied: sphinxcontrib-htmlhelp>=2.0.6 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (2.1.0)
Requirement already satisfied: sphinxcontrib-jsmath>=1.0.1 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (1.0.1)
Requirement already satisfied: sphinxcontrib-qthelp>=1.0.6 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (2.0.0)
Requirement already satisfied: sphinxcontrib-serializinghtml>=1.1.9 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (2.0.0)
Requirement already satisfied: docutils<0.23,>=0.21 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (0.22.4)
Requirement already satisfied: snowballstemmer>=2.2 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (3.0.1)
Requirement already satisfied: alabaster>=0.7.14 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (1.0.0)
Requirement already satisfied: imagesize>=1.3 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (1.4.1)
Requirement already satisfied: roman-numerals>=1.0.0 in ./.doc-venv/lib/python3.12/site-packages (from sphinx->-r requirements-docs.txt (line 6)) (4.1.0)
Requirement already satisfied: beautifulsoup4 in ./.doc-venv/lib/python3.12/site-packages (from furo->-r requirements-docs.txt (line 7)) (4.14.3)
Requirement already satisfied: sphinx-basic-ng>=1.0.0.beta2 in ./.doc-venv/lib/python3.12/site-packages (from furo->-r requirements-docs.txt (line 7)) (1.0.0b2)
Requirement already satisfied: accessible-pygments>=0.0.5 in ./.doc-venv/lib/python3.12/site-packages (from furo->-r requirements-docs.txt (line 7)) (0.0.5)
Requirement already satisfied: markdown-it-py~=4.0 in ./.doc-venv/lib/python3.12/site-packages (from myst-parser->-r requirements-docs.txt (line 8)) (4.0.0)
Requirement already satisfied: mdit-py-plugins~=0.5 in ./.doc-venv/lib/python3.12/site-packages (from myst-parser->-r requirements-docs.txt (line 8)) (0.5.0)
Requirement already satisfied: mdurl~=0.1 in ./.doc-venv/lib/python3.12/site-packages (from markdown-it-py~=4.0->myst-parser->-r requirements-docs.txt (line 8)) (0.1.2)
Requirement already satisfied: googleapis-common-protos<2.0.0,>=1.56.2 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (1.72.0)
Requirement already satisfied: proto-plus<2.0.0,>=1.22.3 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (1.27.0)
Requirement already satisfied: google-auth<3.0.0,>=2.14.1 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (2.48.0)
Requirement already satisfied: pyasn1-modules>=0.2.1 in ./.doc-venv/lib/python3.12/site-packages (from google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (0.4.2)
Requirement already satisfied: cryptography>=38.0.3 in ./.doc-venv/lib/python3.12/site-packages (from google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (46.0.4)
Requirement already satisfied: rsa<5,>=3.1.4 in ./.doc-venv/lib/python3.12/site-packages (from google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (4.9.1)
Requirement already satisfied: pyasn1>=0.1.3 in ./.doc-venv/lib/python3.12/site-packages (from rsa<5,>=3.1.4->google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (0.6.2)
Requirement already satisfied: cffi>=2.0.0 in ./.doc-venv/lib/python3.12/site-packages (from cryptography>=38.0.3->google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (2.0.0)
Requirement already satisfied: pycparser in ./.doc-venv/lib/python3.12/site-packages (from cffi>=2.0.0->cryptography>=38.0.3->google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk->-r requirements-docs.txt (line 3)) (3.0)
Requirement already satisfied: anyio in ./.doc-venv/lib/python3.12/site-packages (from httpx>=0.28.1->a2a-sdk->-r requirements-docs.txt (line 3)) (4.12.1)
Requirement already satisfied: httpcore==1.* in ./.doc-venv/lib/python3.12/site-packages (from httpx>=0.28.1->a2a-sdk->-r requirements-docs.txt (line 3)) (1.0.9)
Requirement already satisfied: h11>=0.16 in ./.doc-venv/lib/python3.12/site-packages (from httpcore==1.*->httpx>=0.28.1->a2a-sdk->-r requirements-docs.txt (line 3)) (0.16.0)
Requirement already satisfied: platformdirs>=2.2.0 in ./.doc-venv/lib/python3.12/site-packages (from mkdocs-get-deps>=0.2.0->mkdocs~=1.6->mkdocs-material==9.6.14->-r requirements-docs.txt (line 1)) (4.5.1)
Requirement already satisfied: annotated-types>=0.6.0 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk->-r requirements-docs.txt (line 3)) (0.7.0)
Requirement already satisfied: pydantic-core==2.41.5 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk->-r requirements-docs.txt (line 3)) (2.41.5)
Requirement already satisfied: typing-extensions>=4.14.1 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk->-r requirements-docs.txt (line 3)) (4.15.0)
Requirement already satisfied: typing-inspection>=0.4.2 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk->-r requirements-docs.txt (line 3)) (0.4.2)
Requirement already satisfied: six>=1.5 in ./.doc-venv/lib/python3.12/site-packages (from python-dateutil->mkdocs-macros-plugin->-r requirements-docs.txt (line 5)) (1.17.0)
Requirement already satisfied: soupsieve>=1.6.1 in ./.doc-venv/lib/python3.12/site-packages (from beautifulsoup4->furo->-r requirements-docs.txt (line 7)) (2.8.3)
Requirement already satisfied: zipp>=3.20 in ./.doc-venv/lib/python3.12/site-packages (from importlib-metadata->mike->-r requirements-docs.txt (line 4)) (3.23.0)
Requirement already satisfied: a2a-sdk in ./.doc-venv/lib/python3.12/site-packages (0.3.22)
Requirement already satisfied: google-api-core>=1.26.0 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk) (2.29.0)
Requirement already satisfied: httpx-sse>=0.4.0 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk) (0.4.3)
Requirement already satisfied: httpx>=0.28.1 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk) (0.28.1)
Requirement already satisfied: protobuf>=5.29.5 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk) (6.33.5)
Requirement already satisfied: pydantic>=2.11.3 in ./.doc-venv/lib/python3.12/site-packages (from a2a-sdk) (2.12.5)
Requirement already satisfied: googleapis-common-protos<2.0.0,>=1.56.2 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk) (1.72.0)
Requirement already satisfied: proto-plus<2.0.0,>=1.22.3 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk) (1.27.0)
Requirement already satisfied: google-auth<3.0.0,>=2.14.1 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk) (2.48.0)
Requirement already satisfied: requests<3.0.0,>=2.18.0 in ./.doc-venv/lib/python3.12/site-packages (from google-api-core>=1.26.0->a2a-sdk) (2.32.5)
Requirement already satisfied: pyasn1-modules>=0.2.1 in ./.doc-venv/lib/python3.12/site-packages (from google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk) (0.4.2)
Requirement already satisfied: cryptography>=38.0.3 in ./.doc-venv/lib/python3.12/site-packages (from google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk) (46.0.4)
Requirement already satisfied: rsa<5,>=3.1.4 in ./.doc-venv/lib/python3.12/site-packages (from google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk) (4.9.1)
Requirement already satisfied: charset_normalizer<4,>=2 in ./.doc-venv/lib/python3.12/site-packages (from requests<3.0.0,>=2.18.0->google-api-core>=1.26.0->a2a-sdk) (3.4.4)
Requirement already satisfied: idna<4,>=2.5 in ./.doc-venv/lib/python3.12/site-packages (from requests<3.0.0,>=2.18.0->google-api-core>=1.26.0->a2a-sdk) (3.11)
Requirement already satisfied: urllib3<3,>=1.21.1 in ./.doc-venv/lib/python3.12/site-packages (from requests<3.0.0,>=2.18.0->google-api-core>=1.26.0->a2a-sdk) (2.6.3)
Requirement already satisfied: certifi>=2017.4.17 in ./.doc-venv/lib/python3.12/site-packages (from requests<3.0.0,>=2.18.0->google-api-core>=1.26.0->a2a-sdk) (2026.1.4)
Requirement already satisfied: pyasn1>=0.1.3 in ./.doc-venv/lib/python3.12/site-packages (from rsa<5,>=3.1.4->google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk) (0.6.2)
Requirement already satisfied: cffi>=2.0.0 in ./.doc-venv/lib/python3.12/site-packages (from cryptography>=38.0.3->google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk) (2.0.0)
Requirement already satisfied: pycparser in ./.doc-venv/lib/python3.12/site-packages (from cffi>=2.0.0->cryptography>=38.0.3->google-auth<3.0.0,>=2.14.1->google-api-core>=1.26.0->a2a-sdk) (3.0)
Requirement already satisfied: anyio in ./.doc-venv/lib/python3.12/site-packages (from httpx>=0.28.1->a2a-sdk) (4.12.1)
Requirement already satisfied: httpcore==1.* in ./.doc-venv/lib/python3.12/site-packages (from httpx>=0.28.1->a2a-sdk) (1.0.9)
Requirement already satisfied: h11>=0.16 in ./.doc-venv/lib/python3.12/site-packages (from httpcore==1.*->httpx>=0.28.1->a2a-sdk) (0.16.0)
Requirement already satisfied: annotated-types>=0.6.0 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk) (0.7.0)
Requirement already satisfied: pydantic-core==2.41.5 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk) (2.41.5)
Requirement already satisfied: typing-extensions>=4.14.1 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk) (4.15.0)
Requirement already satisfied: typing-inspection>=0.4.2 in ./.doc-venv/lib/python3.12/site-packages (from pydantic>=2.11.3->a2a-sdk) (0.4.2)
--- Finding installed package path ---
Found 'a2a' at: /app/.doc-venv/lib/python3.12/site-packages/a2a
--- Generating API documentation source files (.rst) ---
--- Building HTML documentation ---
Running Sphinx v9.1.0
loading translations [en]... done
loading pickled environment... The configuration has changed (1 option: 'pygments_dark_style')
done
[autosummary] generating autosummary for: a2a.auth.rst, a2a.auth.user.rst, a2a.client.auth.credentials.rst, a2a.client.auth.interceptor.rst, a2a.client.auth.rst, a2a.client.base_client.rst, a2a.client.card_resolver.rst, a2a.client.client.rst, a2a.client.client_factory.rst, a2a.client.client_task_manager.rst, ..., a2a.utils.helpers.rst, a2a.utils.message.rst, a2a.utils.parts.rst, a2a.utils.proto_utils.rst, a2a.utils.rst, a2a.utils.signing.rst, a2a.utils.task.rst, a2a.utils.telemetry.rst, index.rst, modules.rst
myst v5.0.0: MdParserConfig(commonmark_only=False, gfm_only=False, enable_extensions=set(), disable_syntax=[], all_links_external=False, links_external_new_tab=False, url_schemes=('http', 'https', 'mailto', 'ftp'), ref_domains=None, fence_as_directive=set(), number_code_blocks=[], title_to_header=False, heading_anchors=0, heading_slug_func=None, html_meta={}, footnote_sort=True, footnote_transition=True, words_per_minute=200, substitutions={}, linkify_fuzzy_links=True, dmath_allow_labels=True, dmath_allow_space=True, dmath_allow_digits=True, dmath_double_inline=False, update_mathjax=True, mathjax_classes='tex2jax_process|mathjax_process|math|output_area', enable_checkboxes=False, suppress_warnings=[], highlight_code_blocks=True)
building [mo]: targets for 0 po files that are out of date
writing output...
building [html]: targets for 0 source files that are out of date
updating environment: 0 added, 8 changed, 0 removed
reading sources... [ 12%] a2a.client.legacy_grpc
reading sources... [ 25%] a2a.client.transports.grpc
reading sources... [ 38%] a2a.grpc.a2a_pb2_grpc
reading sources... [ 50%] a2a.server.models
reading sources... [ 62%] a2a.server.request_handlers.grpc_handler
reading sources... [ 75%] a2a.server.tasks.database_push_notification_config_store
reading sources... [ 88%] a2a.server.tasks.database_task_store
reading sources... [100%] a2a.utils.signing

looking for now-outdated files... none found
pickling environment... done
checking consistency... /app/docs/sdk/python/a2a.rst: document is referenced in multiple toctrees: ['index', 'modules'], selecting: modules <- a2a
done
preparing documents... done
copying assets...
copying static files...
Writing evaluated template result to /app/docs/sdk/python/_build/html/_static/documentation_options.js
Writing evaluated template result to /app/docs/sdk/python/_build/html/_static/basic.css
Writing evaluated template result to /app/docs/sdk/python/_build/html/_static/language_data.js
copying static files: done
copying extra files...
copying extra files: done
copying assets: done
writing output... [  7%] a2a.client
writing output... [ 13%] a2a.client.legacy_grpc
writing output... [ 20%] a2a.client.transports
writing output... [ 27%] a2a.client.transports.grpc
writing output... [ 33%] a2a.grpc
writing output... [ 40%] a2a.grpc.a2a_pb2_grpc
writing output... [ 47%] a2a.server
writing output... [ 53%] a2a.server.models
writing output... [ 60%] a2a.server.request_handlers
writing output... [ 67%] a2a.server.request_handlers.grpc_handler
writing output... [ 73%] a2a.server.tasks
writing output... [ 80%] a2a.server.tasks.database_push_notification_config_store
writing output... [ 87%] a2a.server.tasks.database_task_store
writing output... [ 93%] a2a.utils
writing output... [100%] a2a.utils.signing

generating indices... genindex py-modindex done
writing additional pages... search done
dumping search index in English (code: en)... done
dumping object inventory... done
build succeeded, 21 warnings.

The HTML pages are in docs/sdk/python/_build/html.

✅ Documentation build complete!
View the docs by opening: docs/sdk/python/_build/html/index.html script was destroying and recreating the virtual environment on every run, causing significant delays (70s vs 10s). This is a common anti-pattern in build scripts.
**Action:** Always check build scripts for redundant work like unconditional venv recreation.
