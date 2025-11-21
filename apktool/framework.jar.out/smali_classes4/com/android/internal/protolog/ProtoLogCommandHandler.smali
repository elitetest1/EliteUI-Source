.class public Lcom/android/internal/protolog/ProtoLogCommandHandler;
.super Landroid/os/ShellCommand;
.source "ProtoLogCommandHandler.java"


# instance fields
.field private final blacklist mPrintWriter:Ljava/io/PrintWriter;

.field private final blacklist mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method private blacklist handleGroupsCommands(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Incomplete command. Use \'cmd protolog help\' for guidance."

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown command: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {p0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-nez p1, :cond_2

    const-string p0, "No ProtoLog groups registered with ProtoLog service."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_2
    const-string p1, "ProtoLog groups registered with service:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length p1, p0

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v3, p0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ProtoLog group "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'s status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string p0, "UNREGISTERED"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "LOG_TO_LOGCAT = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->isLoggingToLogcat(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist handleLogcatCommands(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown command: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->processGroups()[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    const-string p0, "Incomplete command. Use \'cmd protolog help\' for guidance."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist processGroups()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mProtoLogConfigurationService:Lcom/android/internal/protolog/ProtoLogConfigurationService;

    invoke-interface {p0}, Lcom/android/internal/protolog/ProtoLogConfigurationService;->getGroups()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getRemainingArgsCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public blacklist getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogCommandHandler;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist handleDefaultCommands(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (use \'help\' command for guidance)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onCommand(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->onHelp()V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "logcat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleLogcatCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->handleGroupsCommands(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist onHelp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "ProtoLog commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  groups (list | status)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    list - lists all ProtoLog groups registered with ProtoLog service"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    status <group> - print the status of a ProtoLog group"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  logcat (enable | disable) <group>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    enable or disable ProtoLog to logcat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
