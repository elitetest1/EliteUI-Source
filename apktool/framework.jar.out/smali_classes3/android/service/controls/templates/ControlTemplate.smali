.class public abstract Landroid/service/controls/templates/ControlTemplate;
.super Ljava/lang/Object;
.source "ControlTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/templates/ControlTemplate$TemplateType;
    }
.end annotation


# static fields
.field private static final blacklist ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

.field private static final blacklist KEY_TEMPLATE_ID:Ljava/lang/String; = "key_template_id"

.field private static final blacklist KEY_TEMPLATE_TYPE:Ljava/lang/String; = "key_template_type"

.field public static final blacklist NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

.field private static final blacklist TAG:Ljava/lang/String; = "ControlTemplate"

.field public static final whitelist TYPE_ERROR:I = -0x1

.field public static final whitelist TYPE_NO_TEMPLATE:I = 0x0

.field public static final whitelist TYPE_RANGE:I = 0x2

.field public static final whitelist TYPE_STATELESS:I = 0x8

.field public static final whitelist TYPE_TEMPERATURE:I = 0x7

.field public static final whitelist TYPE_THUMBNAIL:I = 0x3

.field public static final whitelist TYPE_TOGGLE:I = 0x1

.field public static final whitelist TYPE_TOGGLE_RANGE:I = 0x6


# instance fields
.field private final blacklist mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/service/controls/templates/ControlTemplate$1;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplate$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    new-instance v0, Landroid/service/controls/templates/ControlTemplate$2;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplate$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-void
.end method

.method static blacklist createTemplateFromBundle(Landroid/os/Bundle;)Landroid/service/controls/templates/ControlTemplate;
    .locals 3

    const-string v0, "ControlTemplate"

    if-nez p0, :cond_0

    const-string p0, "Null bundle"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object p0

    :cond_0
    const-string v1, "key_template_type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    :try_start_0
    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/service/controls/templates/StatelessTemplate;

    invoke-direct {v1, p0}, Landroid/service/controls/templates/StatelessTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_2
    new-instance v1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-direct {v1, p0}, Landroid/service/controls/templates/TemperatureControlTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_3
    new-instance v1, Landroid/service/controls/templates/ToggleRangeTemplate;

    invoke-direct {v1, p0}, Landroid/service/controls/templates/ToggleRangeTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_4
    new-instance v1, Landroid/service/controls/templates/ThumbnailTemplate;

    invoke-direct {v1, p0}, Landroid/service/controls/templates/ThumbnailTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_5
    new-instance v1, Landroid/service/controls/templates/RangeTemplate;

    invoke-direct {v1, p0}, Landroid/service/controls/templates/RangeTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_6
    new-instance v1, Landroid/service/controls/templates/ToggleTemplate;

    invoke-direct {v1, p0}, Landroid/service/controls/templates/ToggleTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :cond_7
    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string v1, "Error creating template"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method public static whitelist getErrorTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->ERROR_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public static whitelist getNoTemplateObject()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method


# virtual methods
.method blacklist getDataBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_template_type"

    invoke-virtual {p0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_template_id"

    iget-object p0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getTemplateId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/templates/ControlTemplate;->mTemplateId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract whitelist getTemplateType()I
.end method

.method public blacklist prepareTemplateForBinder(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
