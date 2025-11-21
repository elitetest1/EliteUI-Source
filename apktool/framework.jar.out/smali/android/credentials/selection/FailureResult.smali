.class public final Landroid/credentials/selection/FailureResult;
.super Ljava/lang/Object;
.source "FailureResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/FailureResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_CODE_CANCELED_AND_LAUNCHED_SETTINGS:I = 0x2

.field public static final whitelist ERROR_CODE_DIALOG_CANCELED_BY_USER:I = 0x1

.field public static final whitelist ERROR_CODE_UI_FAILURE:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/credentials/selection/FailureResult;->mErrorCode:I

    iput-object p2, p0, Landroid/credentials/selection/FailureResult;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static whitelist sendFailureResult(Landroid/os/ResultReceiver;Landroid/credentials/selection/FailureResult;)V
    .locals 2

    invoke-virtual {p1}, Landroid/credentials/selection/FailureResult;->toFailureDialogResult()Landroid/credentials/selection/FailureDialogResult;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/credentials/selection/FailureDialogResult;->addToBundle(Landroid/credentials/selection/FailureDialogResult;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/credentials/selection/FailureResult;->errorCodeToResultCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method blacklist errorCodeToResultCode()I
    .locals 2

    iget p0, p0, Landroid/credentials/selection/FailureResult;->mErrorCode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getErrorCode()I
    .locals 0

    iget p0, p0, Landroid/credentials/selection/FailureResult;->mErrorCode:I

    return p0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/FailureResult;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method blacklist toFailureDialogResult()Landroid/credentials/selection/FailureDialogResult;
    .locals 2

    new-instance v0, Landroid/credentials/selection/FailureDialogResult;

    const/4 v1, 0x0

    iget-object p0, p0, Landroid/credentials/selection/FailureResult;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/credentials/selection/FailureDialogResult;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0
.end method
