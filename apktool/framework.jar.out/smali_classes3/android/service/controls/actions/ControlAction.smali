.class public abstract Landroid/service/controls/actions/ControlAction;
.super Ljava/lang/Object;
.source "ControlAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/actions/ControlAction$ResponseResult;,
        Landroid/service/controls/actions/ControlAction$ActionType;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

.field private static final blacklist KEY_ACTION_TYPE:Ljava/lang/String; = "key_action_type"

.field private static final blacklist KEY_CHALLENGE_VALUE:Ljava/lang/String; = "key_challenge_value"

.field private static final blacklist KEY_TEMPLATE_ID:Ljava/lang/String; = "key_template_id"

.field private static final blacklist NUM_RESPONSE_TYPES:I = 0x6

.field public static final whitelist RESPONSE_CHALLENGE_ACK:I = 0x3

.field public static final whitelist RESPONSE_CHALLENGE_PASSPHRASE:I = 0x5

.field public static final whitelist RESPONSE_CHALLENGE_PIN:I = 0x4

.field public static final whitelist RESPONSE_FAIL:I = 0x2

.field public static final whitelist RESPONSE_OK:I = 0x1

.field public static final whitelist RESPONSE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ControlAction"

.field public static final whitelist TYPE_BOOLEAN:I = 0x1

.field public static final whitelist TYPE_COMMAND:I = 0x5

.field public static final whitelist TYPE_ERROR:I = -0x1

.field public static final whitelist TYPE_FLOAT:I = 0x2

.field public static final whitelist TYPE_MODE:I = 0x4


# instance fields
.field private final blacklist mChallengeValue:Ljava/lang/String;

.field private final blacklist mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/controls/actions/ControlAction$1;

    invoke-direct {v0}, Landroid/service/controls/actions/ControlAction$1;-><init>()V

    sput-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    const-string v0, "key_challenge_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/controls/actions/ControlAction-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/controls/actions/ControlAction;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-void
.end method

.method static blacklist createActionFromBundle(Landroid/os/Bundle;)Landroid/service/controls/actions/ControlAction;
    .locals 3

    const-string v0, "ControlAction"

    if-nez p0, :cond_0

    const-string p0, "Null bundle"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object p0

    :cond_0
    const-string v1, "key_action_type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :try_start_0
    sget-object p0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v1, p0}, Landroid/service/controls/actions/CommandAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_2
    new-instance v1, Landroid/service/controls/actions/ModeAction;

    invoke-direct {v1, p0}, Landroid/service/controls/actions/ModeAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_3
    new-instance v1, Landroid/service/controls/actions/FloatAction;

    invoke-direct {v1, p0}, Landroid/service/controls/actions/FloatAction;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_4
    new-instance v1, Landroid/service/controls/actions/BooleanAction;

    invoke-direct {v1, p0}, Landroid/service/controls/actions/BooleanAction;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    const-string v1, "Error creating action"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object p0
.end method

.method public static whitelist getErrorAction()Landroid/service/controls/actions/ControlAction;
    .locals 1

    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0
.end method

.method public static final whitelist isValidResponse(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract whitelist getActionType()I
.end method

.method public whitelist getChallengeValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_action_type"

    invoke-virtual {p0}, Landroid/service/controls/actions/ControlAction;->getActionType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_template_id"

    iget-object v2, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_challenge_value"

    iget-object p0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getTemplateId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    return-object p0
.end method
