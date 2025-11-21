.class public Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;
.super Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;
.source "ATCommandCheckerWithInHouse.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkAdditionalCondition(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist checkProtectedCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I
    .locals 2

    const-string v0, "This Command is a protected command"

    const-string v1, "PACMClassifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;->checkAllCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const-string p0, "This Command is NOT_ALLOWED_PROTECTED_AT_COMMAND"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb1

    return p0
.end method

.method protected blacklist checkUnregisteredCommand(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/ATCommandCheckerWithInHouse;->checkAbsoluteCondition(Lcom/samsung/android/service/ProtectedATCommand/Device;Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const-string p0, "PACMClassifier"

    const-string p1, "This command is not allowed because the command is an unregistered command"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xaf

    return p0
.end method
