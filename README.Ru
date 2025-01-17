<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/25497083/148661419-419ad5b3-1b9f-480a-b723-3f292616730c.png" width="200">
</p>

<div align="Center">
<h1>Polkadot Wiki</h1>
<h3> The Source of Truth for Polkadot </h3>
<br>
  
[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](#LICENSE)
[![made-with-Markdown](https://img.shields.io/badge/Made%20with-Markdown-1f425f.svg)](https://www.markdownguide.org/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](docs/general/contributing.md)
[![Polkadot Prod](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-polkadot-prod.yml/badge.svg)](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-polkadot-prod.yml)
[![Kusama Prod](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-kusama-prod.yml/badge.svg)](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-kusama-prod.yml)
</div>

<!-- TOC -->

- [Contributing to Documentation](#contributing-to-documentation)
- [Running Locally](#running-locally)
  - [Build](#build)
  - [Start](#start)
  - [Publish](#publish)
- [Руководство по стилю и конфигурации](#style-and-configuration-guide)
  - [Форматирование](#formatting)
  - [Поисковая система](#search-engine)
  - [Автоматизация](#automation)
    - [Развертывания](#deployments)
    - [GitHub Actions](#github-actions)
  - [Conditional Rendering](#conditional-rendering)
  - [Inline React Components](#inline-react-components)
- [Интернационализация](#internationalization)
- [Лицензия](#license)
<!-- /TOC -->

---

<img align="right" src="https://user-images.githubusercontent.com/25497083/147788625-14e67f76-c53c-4992-8e84-d23cd78e88bd.png" width="250">

<p align="left">
  Polkadot Wiki - это центральный источник правды для Polkadot. Это инициатива, ориентированная на сообщество, возглавляемая 
  Web3 Foundation, чтобы поддерживать в актуальном состоянии ресурс с лучшей информацией для обучения, создания или поддержки 
  на Polkadot. 
</p>

## Вклад в документацию

[Команда технического образования](https://wiki.polkadot.network/docs/contributors) в Web3 Foundation
являются основными сопровождающими Wiki и будут рассматривать все проблемы и запросы на исправление, созданные в этом
репозитории. Если вы заметили опечатки или грамматические ошибки, пожалуйста, не стесняйтесь создавать запросы на исправление
с этими исправлениями. Более крупный вклад может начинаться как проблемы, чтобы проверить
с сопровождающими. Как правило, предпочтительнее создавать запрос тяги, а не проблему, чтобы
чтобы предложить изменения в содержимом Вики.

:sparkles: **_Вики принадлежит сообществу, помогите создать его идентичность._** :sparkles:

https://user-images.githubusercontent.com/25497083/146822391-5c52a64a-dc2e-4583-9746-109191db5271.mp4

> :inbox_tray: В ближайшее время появится инициатива, которая будет поощрять и стимулировать вклад
> в контент и документацию на основе Polkadot. Тем временем, не стесняйтесь делиться любыми идеями или
> идеями или отзывами, которые у вас есть для Вики, открыв
> [Feature Request issue](https://github.com/w3f/polkadot-wiki/issues/new/choose).

**Продолжайте участвовать, проверяя эти общие
[Ресурсы экосистемы Polkadot](https://hackmd.io/IMgniwlyT_GIqjI8Wui35A)**.

## Запуск локально

И Polkadot Wiki, и Kusama Guide собраны из исходных файлов в этом репозитории.
После клонирования исходных текстов в локальном режиме вы можете запустить сайты с помощью следующих команд
(убедитесь, что вы сначала запустили `yarn` в корне репозитория, чтобы установить зависимости).

Вики использует поиск Algolia, доступ к которому можно получить локально, указав правильный App ID и API
ключ. Переменные окружения `app_id` и `api_key` необходимы для успешной сборки Wiki
успешно. Если вы являетесь внешним контрибьютором, задайте переменным значения, как показано
ниже, что позволит успешно собрать репозиторий Вики (но отключит строку поиска).

``bash
export app_id="xxxxxx" api_key="xxxxxx"
```

Используя yarn, запустите:

``bash
yarn install
```

### Build

:bird: Сборка руководства Кусамы:

``bash
yarn kusama:build
```

🟣 Создание Polkadot Wiki:

``bash
yarn polkadot:build
```

### Start

:bird: Запускаем руководство Кусамы:

``bash
yarn kusama:start
```

🟣 Запуск Polkadot Wiki:

``bash
yarn polkadot:start
```

### Опубликовать

:bird: Публикация руководства Кусамы:

``bash
yarn kusama:publish-gh-pages
```

🟣 Публикация Polkadot Wiki:

``bash
yarn polkadot:publish-gh-pages
```

## Руководство по стилю и настройке

Используйте руководство по стилю из
[Substrate Knowledge Base](https://github.com/substrate-developer-hub/knowledgebase/blob/master/CONTRIBUTING.md#documentation-style)

### Форматирование

Prettier автоматически запускается при локальном коммите. Убедитесь, что все изменения отображаются так, как ожидалось
после внесения новых коммитов, запустив [локальный запуск проектов](#start).

См. разделы [Условный рендеринг](#conditional-rendering) и
[React Components](#inline-react-components) для получения дополнительной информации о том, как
правильного форматирования синтаксиса для элементов, не входящих в стандартную библиотеку markdown.

### Поисковая система

[Algolia DocSearch](https://docsearch.algolia.com/) - это используемая поисковая система, которая
встроенный в Docusaurus. Индексирование через Algolia обеспечивает более быстрый поиск; фактическая конфигурация для
поиска находится в другом репозитории, который поддерживает Algolia DocSearch.

Мы включили поиск в Вики, объявив секцию `algolia` в файле `siteConfig.js`.
в `scripts`, а также определив ключ API и имя индекса, которые предоставляет DocSearch.

``js
  algolia: {
    apiKey: "53c6a4ab0d77c0755375a971c9b7cc3d",
    indexName: "kusama_guide",
    algoliaOptions: {
      facetFilters: ["language:LANGUAGE"],
    }, // Необязательно, если предоставляется Algolia
  }
```

Если вы хотите получить доступ и изменить это, вы можете повторно отправить url документации через
[DocSearch Program](https://docsearch.algolia.com/apply/), где они пришлют фрагмент JavaScript
который вы можете повторно интегрировать в конфигурацию, подобно тому, как показано выше.

### Automation

#### Развертывания

Polkadot Wiki создается на ветке `gh-pages` и автоматически развертывается на GitHub Pages. Вики
Kusama Wiki также развертывается на GitHub Pages (через отдельный репозиторий).

Серверы разработки существуют по адресам `https://staging.polkadot.network` и
`https://staging.kusama.network`. Серверы будут отражать последний `мастер` коммит или PR, размещенный
на мастер-ветку одним из членов команды технического образования. Среда постановки может быть
для отражения конкретной ветки, вызвав команду `workflow_dispatch` через пользовательский интерфейс GitHub
и затем может быть проверена командой перед запуском в производство. Если всё в порядке, новые
коммиты на `master` переносятся в производственную ветку, `prod`, путём перебазирования `master` на
`prod`. Это выполняется автоматически каждые 24 часа или вручную с помощью команды `workflow_dispatch`.
командой. После выполнения этих заданий производственный рабочий процесс CICD автоматически развернет
`prod` на публичные сайты: [Polkadot Wiki](https://wiki.polkadot.network) и
[Kusama Guide](https://guide.kusama.network), соответственно.

#### Действия на GitHub

| Работа | Описание | Частота |
| ------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| [Аудит изображений](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/audit-images.yml) | Поиск изображений без ссылок в репозитории docs и архивирование их в `/docs/assets/_legacy`.                                                                                                            | Ежемесячно или [Диспетчеризация рабочего процесса](https://github.com/w3f/polkadot-wiki/actions/workflows/audit-images.yml) |
| [Audit Links](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/audit-links.yml) | Проверяет все ссылки в документации на наличие битых ссылок и открывает новую проблему с отображением результатов, если таковые были найдены.                                                                                                       | Ежемесячно или [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/audit-links.yml)|
| [Code QL Analysis](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/codeql-analysis.yml) | Проверяет уязвимости во всей кодовой базе | Еженедельно, Push to `master` или Pull Request to `master` |
| [Dependabot]() | Помогает поддерживать пакеты в актуальном состоянии в соответствии с последним релизом.                                                                                                                                                               | Ежедневно |
| [Deploy Kusama Prod](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/deploy-kusama-prod.yml) | Развертывание документации Kusama на [GitHub Pages](https://w3f.github.io/kusama-guide-hosting) (production).                                                                                                                    | Ежедневно или [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-kusama-prod.yml)|
| [Deploy Kusama Staging](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/deploy-kusama-staging.yml) | Развертывание документации Kusama в [staging environment](https://staging.kusama.network).                                                                                                                                      | [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-kusama-staging.yml)| |
| [Deploy Polkadot Prod](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/deploy-polkadot-prod.yml) | Развертывание документации Polkadot на [GitHub Pages](https://w3f.github.io/polkadot-wiki) (production).                                                                                                                         | Ежедневно или [Диспетчер рабочего процесса](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-polkadot-prod.yml) |
| [Развертывание Polkadot Staging](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/deploy-polkadot-staging.yml) | Разверните документацию Polkadot в [среду постановки](https://staging.polkadot.network).                                                                                                                                  | | [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-polkadot-staging.yml) | [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/deploy-polkadot-staging.yml)
| [Generate PDF](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/generate-pdf.yml) | Сгенерировать PDF для документов и загрузить его на статический веб-сайт.                                                                                                                                                  | Отключено вручную |
| [Приветствие](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/greetings.yml) | Приветствие тех, кто впервые участвует в проекте.                                                                                                                                                                                    | Впервые созданный Pull Request или Issue Creation |
| [Jest Testing Coverage](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/jest-testing-coverage.yml) | Запуск серии [Jest тестов](https://github.com/w3f/polkadot-wiki/tree/master/tests), связанных с функциональностью React.                                                                                              | Еженедельная или [Диспетчеризация рабочего процесса](https://github.com/w3f/polkadot-wiki/actions/workflows/jest-testing-coverage.yml) |
| [Pages and Build Deployment](https://github.com/w3f/polkadot-wiki/actions/workflows/pages/pages-build-deployment)         | Развернуть ветку Polkadot docs prod из GH Pages на публичный сайт. (Первоначально это настраивалось через меню [GitHub settings](https://github.com/w3f/polkadot-wiki/settings/pages), до появления потоков GitHub Actions) | On Push to `gh-pages` branch |
| [Prettier All](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/prettier-all.yml) | Запускать prettier для всех документов, чтобы поддерживать стандарты оформления.                                                                                                                                                         | Еженедельно или [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/prettier-all.yml)|
| [Status Badges](https://github.com/w3f/polkadot-wiki/blob/master/.github/workflows/status-badges.yml) | Обновление истории коммитов различных [open source проектов](https://github.com/w3f/polkadot-wiki/blob/master/docs/build/build-open-source.md) в экосистеме.                                                   | Еженедельно или [Workflow Dispatch](https://github.com/w3f/polkadot-wiki/actions/workflows/status-badges.yml)|

### Условный рендеринг

Обе вики поддерживают условный рендеринг в зависимости от того, какая вики развернута. Это
полезно для зеркальных страниц с общим содержимым, но с небольшими различиями. Чтобы использовать эту
функциональность, окружите содержимое, специфичное для Кусамы, символами
`{{ kusama: KUSAMA_SPECIFIC_CONTENT :kusama }}`, а контент, специфичный для polkadot, - `{{ polkadot: KUSAMA_SPECIFIC_CONTENT :kusama }}`.
`{{ polkadot: POLKADOT_SPECIFIC_CONTENT :polkadot }}`.

Например, синтаксис:

``markdown
{{ polkadot: Polkdadot Wiki :polkadot }} {{ kusama: Kusama Guide :kusama }} - отличный ресурс!
```

Будет рендерить:

```
Polkdadot Wiki - отличный ресурс!
```

или

```
Руководство Кусамы - отличный ресурс!
```

в зависимости от того, какой проект загружен в данный момент.

Чтобы убедиться в том, что в каждом сценарии были подставлены соответствующие значения, запустите `polkadot:start` и
`kusama:start` в разных терминалах. Если на экране появится сообщение
`[WARNING] Что-то уже запущено на порту 3000. Не хотите ли вы запустить приложение на другом порту?
ответьте `yes`. Скорее всего, один проект будет запущен на порту 3000, а другой - на 3001, что позволит
вы сможете сравнить результаты рендеринга для обоих проектов локально и одновременно.

### Inline React Components

Иногда вам может потребоваться дополнительная функциональность, которая выходит за рамки базового
markdown. В качестве решения можно использовать компоненты React, встраиваемые в существующие документы разметки, что позволяет
выводить пользовательские элементы. В настоящее время эта стратегия используется для того, чтобы
[получения живых значений на цепочке](https://github.com/w3f/polkadot-wiki/blob/master/components/RPC-Connection.jsx)
и отображения их непосредственно в документах без необходимости перекомпиляции или даже перезагрузки веб-приложения с использованием
RPC.

Если вы хотите вызывать и внедрять данные из сторонних API или источников, обратите внимание на
[Http-Request-Sample component](https://github.com/w3f/polkadot-wiki/blob/master/components/Http-Request-Sample.jsx).
Полный список компонентов-образцов можно найти
[здесь](https://github.com/w3f/polkadot-wiki/tree/master/components).

Старайтесь как можно чаще использовать существующие компоненты вместо создания новых, чтобы сохранить код
чтобы код был компактным и всеобъемлющим. Также важно убедиться, что prettier не изменил форматирование
вашего компонента после фиксации. Ниже приведены некоторые лучшие практики для достижения общего форматирования
которые не будут изменены командой prettier:

Всегда оборачивайте RPC-компоненты в условный рендеринг и располагайте их на новых строках:

```
{{ polkadot: <RPC network="polkadot" path="query.staking.validatorCount" defaultValue={297}/> :polkadot }}
{{ kusama: <RPC network="kusama" path="query.staking.validatorCount" defaultValue={297}/> :kusama }}
```

Чтобы добавить грамматику без дополнительного интервала, поместите ее внутрь условных скобок:

```
Счетчик валидаторов, за которым следует точка, выглядит следующим образом
{{ polkadot: <RPC network="polkadot" path="query.staking.validatorCount" defaultValue={297}/>. :polkadot }}
{{ kusama: <RPC network="kusama" path="query.staking.validatorCount" defaultValue={297}/>. :kusama }}

В скобках указано количество валидаторов.
{{ polkadot: (<RPC network="polkadot" path="query.staking.validatorCount" defaultValue={297}/>) :polkadot }}
{{ kusama: (<RPC network="kusama" path="query.staking.validatorCount" defaultValue={297}/>) :kusama }}
```

Несоблюдение этой схемы может привести к неожиданному форматированию, например, добавлению переносов строк или
интервалы, особенно после запуска более красивого.

## Интернационализация

| ❗ В настоящее время Вики находится в процессе реорганизации и обновления. Работа над переводами будет возобновлена после завершения реорганизации Wiki. |
| ---------------------------------------------------------------------------------------------------------------------------- |

## Лицензия

Polkadot Wiki распространяется на условиях лицензии свободных программ [GPL-3.0](LICENSE).
