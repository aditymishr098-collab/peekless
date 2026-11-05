// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get navHome => 'Início';

  @override
  String get navApps => 'Apps';

  @override
  String get navPermissions => 'Permissões';

  @override
  String get navChanges => 'Alterações';

  @override
  String get navSettings => 'Configurações';

  @override
  String get levelRisky => 'Arriscados';

  @override
  String get levelMedium => 'Médios';

  @override
  String get levelSafe => 'Seguros';

  @override
  String get overallHigh => 'Risco alto';

  @override
  String get overallMedium => 'Risco médio';

  @override
  String get overallLow => 'Risco baixo';

  @override
  String get cancel => 'Cancelar';

  @override
  String get clear => 'Limpar';

  @override
  String get back => 'Voltar';

  @override
  String get later => 'Mais tarde';

  @override
  String get noneFound => 'Nada encontrado';

  @override
  String get scanning => 'Verificando...';

  @override
  String get scanFailed => 'Falha na verificação';

  @override
  String get tryAgain => 'Tentar novamente';

  @override
  String get couldNotOpenSettings =>
      'Não foi possível abrir as configurações do app.';

  @override
  String get homeShare => 'Compartilhar relatório';

  @override
  String get homeRescan => 'Verificar os apps novamente';

  @override
  String homeAppsChecked(int count) {
    return 'Apps verificados neste telefone: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Apps contados: $counted, confiáveis: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Precisam de atenção';

  @override
  String get homeSeeAll => 'Ver todos';

  @override
  String get homeAllSafe =>
      'Nada precisa de atenção. Todos os apps parecem seguros.';

  @override
  String get homeShareFailed => 'Não foi possível compartilhar o relatório.';

  @override
  String get scoreOf100 => 'de 100';

  @override
  String scoreSemantics(int score) {
    return 'Pontuação de privacidade: $score de 100';
  }

  @override
  String wizardCard(int count) {
    return 'Revise os apps com acesso sensível: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Apps: $count, os mais arriscados primeiro';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Mostrando $shown de $total';
  }

  @override
  String get appsSearch => 'Pesquisar apps';

  @override
  String get appsNone => 'Nenhum app encontrado';

  @override
  String get chipMine => 'Meus apps';

  @override
  String get chipSystem => 'Sistema';

  @override
  String get filterAll => 'Todos';

  @override
  String get filterTrackers => 'Com rastreadores';

  @override
  String get filterSpecial => 'Acesso especial';

  @override
  String get filterNotStore => 'Fora da loja';

  @override
  String get filterOffline => 'Off-line';

  @override
  String get filterTrusted => 'Confiáveis';

  @override
  String get permSubtitle => 'Quem pode usar o quê neste telefone';

  @override
  String get trackersSubtitle => 'Qual rastreador está em quais apps';

  @override
  String get segTrackers => 'Rastreadores';

  @override
  String get noTrackers => 'Nenhum rastreador conhecido encontrado.';

  @override
  String get noPerms => 'Nenhuma permissão sensível encontrada.';

  @override
  String appsCount(int count) {
    return 'Apps: $count';
  }

  @override
  String get changesSubtitle => 'Apps novos e alterações de permissões';

  @override
  String get clearTitle => 'Limpar as alterações?';

  @override
  String get clearBody => 'A lista de alterações será removida deste telefone.';

  @override
  String get changesEmpty =>
      'Ainda não há alterações. O Peekless mostrará aqui os apps novos e removidos, as novas permissões e os novos rastreadores.';

  @override
  String evInstalled(int score, String level) {
    return 'Instalado. Pontuação: $score ($level).';
  }

  @override
  String get evRemoved => 'Removido.';

  @override
  String evAllowed(String label) {
    return 'Agora permitido: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Não é mais permitido: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Novo rastreador encontrado: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: ativado.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: desativado.';
  }

  @override
  String get checksTitle => 'Verificações de segurança';

  @override
  String get checksIntro =>
      'Coisas que vale a pena rever. Toque em uma verificação para ver os apps.';

  @override
  String get checkUnusedTitle => 'Apps sem uso com acesso sensível';

  @override
  String get checkDebuggableTitle => 'Versões de depuração';

  @override
  String get checkOfflineTitle => 'Apps off-line';

  @override
  String get checkAccessibilityDesc =>
      'Esses apps podem ler sua tela e tocar por você.';

  @override
  String get checkAdminDesc =>
      'Esses apps podem bloquear ou apagar o telefone e impedir a desinstalação.';

  @override
  String get checkNotificationDesc =>
      'Esses apps podem ler todas as suas notificações, inclusive códigos.';

  @override
  String checkUnusedDesc(int days) {
    return 'Não são abertos há $days dias, mas ainda podem usar permissões sensíveis. Considere removê-los.';
  }

  @override
  String get checkNotStoreDesc =>
      'Instalados de um arquivo ou de um computador. Ninguém os verificou por você.';

  @override
  String get checkDebuggableDesc =>
      'Versões de teste que podem ser inspecionadas a partir de um computador.';

  @override
  String get checkOldDesc =>
      'Esses apps contornam as novas proteções de privacidade do Android.';

  @override
  String get checkOfflineDesc =>
      'Sem permissão de internet, então não podem enviar dados on-line.';

  @override
  String get usagePromptBody =>
      'Opcional. Ative o acesso de uso para encontrar apps que você não abre há muito tempo, mas que ainda podem usar seu microfone, localização ou contatos. Os dados não saem do seu telefone.';

  @override
  String get usagePromptButton => 'Ativar acesso de uso';

  @override
  String get securityNone =>
      'Nenhum alerta de segurança encontrado neste telefone.';

  @override
  String securityOffline(int count) {
    return 'Apps que funcionam totalmente off-line: $count';
  }

  @override
  String get fixWizardTitle => 'Assistente de correção';

  @override
  String wizardStep(int index, int total) {
    return 'App $index de $total';
  }

  @override
  String get wizardQuestion => 'Este app realmente precisa disso?';

  @override
  String get wizardHint =>
      'Toque em “Abrir configurações do app”, depois em Permissões, e desative o que o app não precisa.';

  @override
  String get openAppSettings => 'Abrir configurações do app';

  @override
  String get trustApp => 'Confio neste app';

  @override
  String get nextApp => 'Próximo app';

  @override
  String get finish => 'Concluir';

  @override
  String get wizardDone => 'Tudo revisado';

  @override
  String get wizardNothing => 'Nada para revisar';

  @override
  String get wizardNothingBody => 'No momento, nenhum app tem acesso sensível.';

  @override
  String get wizardRescanBody =>
      'Verifique novamente para ver sua nova pontuação.';

  @override
  String get rescanFinish => 'Verificar de novo e concluir';

  @override
  String get wizardRequested => 'solicitado, ainda não permitido';

  @override
  String scoreTrackers(int count) {
    return 'Rastreadores conhecidos: $count';
  }

  @override
  String get scoreDebuggable => 'Versão de depuração';

  @override
  String get scoreOldTarget => 'Criado para um Android muito antigo';

  @override
  String unusualFor(String groups) {
    return 'Incomum para este tipo de app: $groups';
  }

  @override
  String get noteRequested => 'solicitado, conta metade';

  @override
  String get noteAllowed => 'permitido';

  @override
  String noteTrackers(int points, int max) {
    return '$points cada, máximo $max';
  }

  @override
  String get noteTurnedOn => 'ativado';

  @override
  String get noteDebuggable =>
      'pode ser inspecionado a partir de um computador';

  @override
  String noteApi(int apiLevel) {
    return 'nível de API $apiLevel';
  }

  @override
  String get noteExtra => 'redução adicional';

  @override
  String get explainTitle => 'Como a pontuação funciona';

  @override
  String get explainIntro =>
      'Todo app começa com 100. Pontos são descontados pelo que o app pode fazer.';

  @override
  String get explainStart => 'Início';

  @override
  String get explainNothing => 'Nada descontado';

  @override
  String get explainNothingNote =>
      'Sem permissões sensíveis nem rastreadores conhecidos';

  @override
  String get explainScore => 'Pontuação';

  @override
  String get explainRules => 'As regras';

  @override
  String get rule1 =>
      'Em cada grupo, só conta a permissão mais pesada. Por exemplo, localização precisa e aproximada contam uma vez só.';

  @override
  String get rule2 =>
      'Permissões especiais (todos os arquivos, exibir sobre outros apps, instalar apps) contam metade se o app apenas as solicitou.';

  @override
  String rule3(int points, int max) {
    return 'Cada rastreador conhecido desconta $points pontos, até o máximo de $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Um acesso especial ativado desconta pontos: acessibilidade $a, administrador do dispositivo $b, acesso a notificações $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Uma versão de depuração desconta $a. Um app criado para Android 7 ou anterior desconta $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Se uma permissão é incomum para aquele tipo de app (por exemplo, microfone em uma lanterna), mais $points pontos são descontados, para no máximo $maxGroups grupos de permissões.';
  }

  @override
  String get rule7 =>
      '70 ou mais: Seguro. De 40 a 69: Médio. Abaixo de 40: Arriscado.';

  @override
  String get explainFooter =>
      'A pontuação mostra o que um app pode fazer, não o que ele está fazendo agora.';

  @override
  String get howScore => 'Como essa pontuação é calculada?';

  @override
  String summaryTrackers(int count) {
    return 'Rastreadores conhecidos: $count.';
  }

  @override
  String get summaryNone =>
      'Sem permissões sensíveis nem rastreadores conhecidos.';

  @override
  String metaTrackers(int count) {
    return 'Rastreadores: $count';
  }

  @override
  String get metaNone => 'Sem permissões sensíveis';

  @override
  String get detailSecurity => 'Segurança';

  @override
  String get detailSource => 'Origem';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Pode acessar a internet';

  @override
  String get detailOffline => 'Off-line';

  @override
  String get detailOfflineBody =>
      'Sem permissão de internet, então não pode enviar dados on-line';

  @override
  String get detailLastOpened => 'Última abertura';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String daysSince(int days) {
    return 'Dias desde o último uso: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Versão de teste que pode ser inspecionada a partir de um computador';

  @override
  String detailOldBody(int apiLevel) {
    return 'Nível de API $apiLevel, então as novas proteções de privacidade são contornadas';
  }

  @override
  String get detailTrustBody => 'Não contar em Arriscados nem nos alertas';

  @override
  String get detailNoPerms => 'Este app não solicita permissões sensíveis.';

  @override
  String get chipAllowed => 'Permitido';

  @override
  String get chipRequested => 'Solicitado';

  @override
  String get chipNotAllowed => 'Não permitido';

  @override
  String sensitiveNote(String why) {
    return 'Sensível: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Rastreadores encontrados: $count';
  }

  @override
  String get detailDisclaimer =>
      'O Peekless mostra o que um app pode fazer, não o que ele está fazendo agora. Os rastreadores são detectados no manifesto do app, então alguns podem passar despercebidos.';

  @override
  String get srcBuiltIn => 'Incluído no seu telefone';

  @override
  String get srcUnknown =>
      'Desconhecida (instalado de um arquivo ou de um computador)';

  @override
  String get srcApk => 'Um arquivo APK que você abriu';

  @override
  String get srcAdb => 'Um computador (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Instalado por $name';
  }

  @override
  String get accessibilityLabel => 'Acesso de acessibilidade';

  @override
  String get adminLabel => 'Administrador do dispositivo';

  @override
  String get notificationLabel => 'Acesso a notificações';

  @override
  String get accessibilityWhy =>
      'Ativado. Pode ler o que está na tela e agir por você.';

  @override
  String get adminWhy =>
      'Ativado. Pode bloquear o telefone, apagá-lo e impedir a desinstalação.';

  @override
  String get notificationWhy =>
      'Ativado. Pode ler todas as suas notificações, inclusive códigos.';

  @override
  String get grpMicrophone => 'Microfone';

  @override
  String get grpCamera => 'Câmera';

  @override
  String get grpLocation => 'Localização';

  @override
  String get grpContacts => 'Contatos';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Registro de chamadas';

  @override
  String get grpPhone => 'Telefone';

  @override
  String get grpCalendar => 'Agenda';

  @override
  String get grpBodySensors => 'Sensores corporais';

  @override
  String get grpActivity => 'Atividade';

  @override
  String get grpFiles => 'Arquivos';

  @override
  String get grpOverlay => 'Sobreposição';

  @override
  String get grpInstalls => 'Instalações';

  @override
  String get grpAppList => 'Lista de apps';

  @override
  String get lblCoarseLocation => 'Localização aproximada';

  @override
  String get lblFineLocation => 'Localização precisa';

  @override
  String get lblBackgroundLocation => 'Localização o tempo todo';

  @override
  String get lblAccounts => 'Contas';

  @override
  String get lblReadSms => 'Ler SMS';

  @override
  String get lblReceiveSms => 'Receber SMS';

  @override
  String get lblSendSms => 'Enviar SMS';

  @override
  String get lblPhoneState => 'Estado do telefone';

  @override
  String get lblCallPhone => 'Fazer chamadas';

  @override
  String get lblActivity => 'Atividade física';

  @override
  String get lblAllFiles => 'Todos os arquivos';

  @override
  String get lblFilesMedia => 'Arquivos e mídia';

  @override
  String get lblPhotos => 'Fotos';

  @override
  String get lblVideos => 'Vídeos';

  @override
  String get lblAudioFiles => 'Arquivos de áudio';

  @override
  String get lblOverlay => 'Exibir sobre outros apps';

  @override
  String get lblInstall => 'Instalar outros apps';

  @override
  String get lblAppList => 'Ver todos os apps';

  @override
  String get whyMic => 'Pode gravar áudio.';

  @override
  String get whyCamera => 'Pode usar a câmera.';

  @override
  String get whyCoarse => 'Pode ver sua localização aproximada.';

  @override
  String get whyFine => 'Pode ver sua localização precisa.';

  @override
  String get whyBackground => 'Pode acompanhar sua localização o tempo todo.';

  @override
  String get whyContacts => 'Pode ler seus contatos.';

  @override
  String get whyAccounts => 'Pode ver as contas do telefone.';

  @override
  String get whyReadSms => 'Pode ler seus SMS.';

  @override
  String get whyReceiveSms => 'Pode receber seus SMS.';

  @override
  String get whySendSms => 'Pode enviar SMS.';

  @override
  String get whyCallLog => 'Pode ler seu histórico de chamadas.';

  @override
  String get whyPhoneState => 'Pode ver o estado do seu telefone.';

  @override
  String get whyCallPhone => 'Pode fazer chamadas.';

  @override
  String get whyCalendar => 'Pode ler sua agenda.';

  @override
  String get whyBody => 'Pode ler os sensores corporais.';

  @override
  String get whyActivity => 'Pode ver sua atividade física.';

  @override
  String get whyAllFiles => 'Pode acessar todos os arquivos do telefone.';

  @override
  String get whyFilesMedia => 'Pode ler arquivos e mídia.';

  @override
  String get whyPhotos => 'Pode ler suas fotos.';

  @override
  String get whyVideos => 'Pode ler seus vídeos.';

  @override
  String get whyAudio => 'Pode ler seus arquivos de áudio.';

  @override
  String get whyOverlay => 'Pode aparecer sobre outros apps.';

  @override
  String get whyInstall => 'Pode instalar outros apps.';

  @override
  String get whyAppList => 'Pode ver todos os apps do telefone.';

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeBody => 'Por padrão, segue o seu telefone';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get settingsScanning => 'Verificação';

  @override
  String get settingsAlerts => 'Alertas de apps';

  @override
  String get settingsAlertsBody =>
      'Avisa sobre apps novos e novas permissões. Verifica a cada 6 horas, aproximadamente.';

  @override
  String get settingsWeekly => 'Resumo semanal';

  @override
  String get settingsWeeklyBody =>
      'Uma notificação por semana com sua pontuação e o que mudou';

  @override
  String get settingsUsage => 'Acesso de uso';

  @override
  String get settingsUsageOn =>
      'Ativado. O Peekless pode ver quando os apps foram abertos pela última vez.';

  @override
  String get settingsUsageOff =>
      'Desativado. Opcional. Permite que o Peekless encontre apps que você não usa mais. Fica no seu telefone.';

  @override
  String get settingsSystemApps => 'Incluir apps do sistema';

  @override
  String get settingsSystemAppsBody =>
      'Verificar também os apps que vêm no telefone';

  @override
  String get settingsRescan => 'Verificar agora';

  @override
  String get settingsRescanBody => 'Conferir todos os apps novamente';

  @override
  String get settingsUpdates => 'Atualizações';

  @override
  String get settingsCheckUpdates => 'Procurar atualizações';

  @override
  String settingsVersion(String version) {
    return 'Versão $version · só quando você tocar';
  }

  @override
  String get settingsAbout => 'Sobre';

  @override
  String get settingsPrivacy => 'Privacidade';

  @override
  String get settingsPrivacyBody => 'Tudo fica no seu telefone';

  @override
  String get settingsOpenSource => 'Código aberto';

  @override
  String get settingsOpenSourceBody =>
      'Licença GPL-3.0. Veja o código no GitHub';

  @override
  String get settingsDeveloped => 'Desenvolvido por Lumio Apps';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get languageSystem => 'Seguir o idioma do telefone';

  @override
  String get updChecking => 'Procurando atualizações...';

  @override
  String get updLatest => 'Você está com a versão mais recente.';

  @override
  String get updFailed =>
      'Não foi possível procurar atualizações. Tente mais tarde.';

  @override
  String get updTitle => 'Atualização disponível';

  @override
  String updReady(String version) {
    return 'A versão $version está pronta para instalar.';
  }

  @override
  String get updDownloadFailed =>
      'Falha no download. Verifique a conexão e tente novamente.';

  @override
  String get updInstall => 'Baixar e instalar';

  @override
  String get notifyDenied =>
      'Permita as notificações do Peekless para ativar isto.';

  @override
  String get settingChangeFailed =>
      'Não foi possível alterar esta configuração.';

  @override
  String get usageOpenFailed =>
      'Não foi possível abrir as configurações de acesso de uso.';

  @override
  String alertNewTitle(String name) {
    return 'Novo app: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Pontuação $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name mudou';
  }

  @override
  String alertNowHas(String list) {
    return 'Agora tem: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Agora permitido: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Novo rastreador: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Pontuação $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Mais alterações';

  @override
  String alertMoreBody(int count) {
    return 'Mais alterações: $count. Abra o Peekless para ver.';
  }

  @override
  String get weeklyTitle => 'Seu resumo semanal do Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Pontuação $score/100, $diff a mais que na semana passada.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Pontuação $score/100, $diff a menos que na semana passada.';
  }

  @override
  String weeklySame(int score) {
    return 'Pontuação $score/100, sem mudança desde a semana passada.';
  }

  @override
  String weeklyScore(int score) {
    return 'Pontuação $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Apps novos: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Apps removidos: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Permissões ativadas: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Novos rastreadores: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Nesta semana: $list.';
  }

  @override
  String get weeklyNone => 'Nenhuma alteração nesta semana.';

  @override
  String weeklyRisky(int count) {
    return 'Apps arriscados: $count.';
  }

  @override
  String get reportTitle => 'Relatório de privacidade do Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Pontuação: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Apps verificados: $total. Arriscados: $risky, Médios: $medium, Seguros: $safe';
  }

  @override
  String get reportAttention => 'Precisam de atenção:';

  @override
  String get reportFooter =>
      'Verificado no meu telefone com o Peekless. Nada foi enviado a lugar nenhum.';

  @override
  String get trendTitle => 'Pontuação ao longo do tempo';

  @override
  String trendUp(int diff, int days) {
    return 'Subiu $diff (dias acompanhados: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Caiu $diff (dias acompanhados: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Sem mudança (dias acompanhados: $days)';
  }

  @override
  String get settingsQuick => 'Acesso rápido';

  @override
  String get quickWidget => 'Widget da tela inicial';

  @override
  String get quickWidgetBody =>
      'Mostra sua pontuação de privacidade na tela inicial';

  @override
  String get quickTile => 'Bloco de Configurações rápidas';

  @override
  String get quickTileBody =>
      'Veja sua pontuação no painel de configurações rápidas';

  @override
  String get quickManual =>
      'Seu telefone não conseguiu adicionar isso automaticamente. Adicione manualmente: toque e segure a tela inicial (widget) ou edite o painel de configurações rápidas (bloco).';

  @override
  String get settingsExport => 'Exportar relatório';

  @override
  String get settingsExportBody =>
      'Salve o relatório como PDF ou JSON e compartilhe';

  @override
  String get exportFailed => 'Não foi possível criar o relatório.';

  @override
  String get settingsTrackerList => 'Lista de rastreadores';

  @override
  String settingsTrackerListBody(int count) {
    return 'Toque para atualizar. $count rastreadores conhecidos. Somente quando você tocar.';
  }

  @override
  String get trackerListUpdating => 'Atualizando a lista de rastreadores…';

  @override
  String trackerListUpdated(int count) {
    return 'Lista de rastreadores atualizada. $count rastreadores conhecidos.';
  }

  @override
  String get trackerListCurrent =>
      'A lista de rastreadores já está atualizada.';

  @override
  String get trackerListFailed =>
      'Não foi possível atualizar a lista de rastreadores. Verifique sua conexão.';

  @override
  String get homeTagline => 'Veja quem está espiando você.';

  @override
  String get homeOverviewBody => 'Parcela dos seus apps que podem usar cada um';

  @override
  String get settingsDeep => 'Verificação profunda';

  @override
  String get settingsDeepBody =>
      'Procura rastreadores escondidos também dentro do código de cada app. A primeira verificação é mais lenta. Apps que vieram com o telefone são ignorados. Tudo fica no seu telefone.';

  @override
  String trackersFromCode(int count) {
    return 'Encontrados dentro do código do app (marcados com um ícone de código): $count';
  }

  @override
  String get settingsNet => 'Monitor de rede';

  @override
  String get settingsNetBody =>
      'Veja quais apps consultam quais endereços da internet e quais são rastreadores';

  @override
  String get netTitle => 'Monitor de rede';

  @override
  String get netIntro =>
      'O Peekless mostra quais nomes de domínio seus apps pedem. Ele usa uma VPN local que recebe só essas consultas, então a velocidade da internet não muda. Não vê o que você envia ou lê, só os nomes. Nada sai do seu telefone.';

  @override
  String get netLimits =>
      'Pode não ver apps que usam seu próprio DNS criptografado, ou quando o DNS privado está fixo em um provedor. É preciso Android 10 ou mais novo para mostrar qual app pediu.';

  @override
  String get netSwitch => 'Monitorar consultas';

  @override
  String get netOn =>
      'Ativado. Use alguns apps e volte para ver os resultados.';

  @override
  String get netOff => 'Desativado';

  @override
  String get netEmpty => 'Nada visto ainda. Use alguns apps e olhe de novo.';

  @override
  String netLookups(int count) {
    return '$count consultas';
  }

  @override
  String netTrackerCount(int count) {
    return '$count domínios de rastreadores';
  }

  @override
  String get netClear => 'Limpar dados';

  @override
  String get netCleared => 'Dados de rede apagados.';

  @override
  String get netConsentDenied => 'O Android não permitiu iniciar o monitor.';

  @override
  String get netFailed => 'Não foi possível alterar o monitor de rede.';

  @override
  String get netUnknownApp => 'App desconhecido';

  @override
  String netTrackerTag(String name) {
    return 'Rastreador: $name';
  }

  @override
  String get netBlockTitle => 'Bloquear domínios de rastreadores';

  @override
  String get netBlockBody =>
      'Os nomes de rastreadores conhecidos recebem uma resposta vazia, então esses apps não conseguem alcançá-los. Alguns apps podem perder anúncios, estatísticas ou outros recursos. Desativado por padrão.';

  @override
  String netBlockedCount(int count) {
    return '$count bloqueadas';
  }

  @override
  String get netExport => 'Exportar como CSV';
}
