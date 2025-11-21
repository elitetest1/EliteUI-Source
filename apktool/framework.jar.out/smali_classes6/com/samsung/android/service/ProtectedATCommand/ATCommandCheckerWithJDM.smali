.class public Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;
.super Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;
.source "ATCommandCheckerWithJDM.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;-><init>()V

    return-void
.end method

.method private blacklist checkJDMOpenCommand(Ljava/lang/String;)I
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Input Cmd : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PACMClassifier"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x10000000

    if-nez p1, :cond_0

    const-string p1, "cmd is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const-string v1, "AT+BATTTEST=4,7"

    const-string v2, "AT+PRODCODE=2,"

    const-string v3, "AT+IFPMICCN=0,0,6,0"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "This command is a JDM open command"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0

    :cond_2
    const/16 p0, 0xb0

    return p0
.end method

.method private blacklist checkJDMProtectedCommand(Ljava/lang/String;)I
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Input Cmd : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PACMClassifier"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x10000000

    if-nez p1, :cond_0

    const-string p1, "cmd is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const-string v1, "AT+DEVROOTK=2,2,"

    const-string v2, "AT+DEVROOTK=2,3,"

    const-string v3, "AT+ALERTDIS=0,"

    const-string v4, "AT+DEBUGLVC=0,5"

    const-string v5, "AT+DEBUGLVC=0,6"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "This command is a JDM protected command"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0

    :cond_2
    const/16 p0, 0xb0

    return p0
.end method


# virtual methods
.method protected blacklist checkAdditionalCondition(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkJDMOpenCommand(Ljava/lang/String;)I

    move-result v0

    const-string v1, "PACMClassifier"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p0, "This command is allowed because this device is a JDM device"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkJDMProtectedCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_1

    const-string p0, "This command is not allowed because this device is a JDM device"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb1

    return p0

    :cond_1
    return v2
.end method

.method protected blacklist checkProtectedCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
    .locals 2

    const-string v0, "PACMClassifier"

    const-string v1, "This Command is a protected command"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkAllCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const/16 p0, 0xa1

    return p0
.end method

.method protected blacklist checkUnregisteredCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithJDM;->checkAbsoluteCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const-string p0, "PACMClassifier"

    const-string p1, "Although this command is an unregistered command, the command is allowed because this device is a JDM device"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa1

    return p0
.end method
