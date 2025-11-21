.class public abstract Landroid/content/theming/ThemeSettingsField;
.super Ljava/lang/Object;
.source "ThemeSettingsField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "J:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist KEY_PREFIX:Ljava/lang/String; = "android.theme.customization."

.field public static final blacklist OVERLAY_CATEGORY_ACCENT_COLOR:Ljava/lang/String; = "android.theme.customization.accent_color"

.field public static final blacklist OVERLAY_CATEGORY_SYSTEM_PALETTE:Ljava/lang/String; = "android.theme.customization.system_palette"

.field public static final blacklist OVERLAY_CATEGORY_THEME_STYLE:Ljava/lang/String; = "android.theme.customization.theme_style"

.field public static final blacklist OVERLAY_COLOR_BOTH:Ljava/lang/String; = "android.theme.customization.color_both"

.field public static final blacklist OVERLAY_COLOR_INDEX:Ljava/lang/String; = "android.theme.customization.color_index"

.field public static final blacklist OVERLAY_COLOR_SOURCE:Ljava/lang/String; = "android.theme.customization.color_source"

.field private static final blacklist TAG:Ljava/lang/String; = "ThemeSettingsField"


# instance fields
.field public final blacklist key:Ljava/lang/String;

.field private final blacklist mDefaults:Landroid/content/theming/ThemeSettings;

.field private final blacklist mGetter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mSetter:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/theming/ThemeSettingsUpdater;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/theming/ThemeSettingsUpdater;",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "TT;>;",
            "Landroid/content/theming/ThemeSettings;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/theming/ThemeSettingsField;->mSetter:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Landroid/content/theming/ThemeSettingsField;->mGetter:Ljava/util/function/Function;

    iput-object p4, p0, Landroid/content/theming/ThemeSettingsField;->mDefaults:Landroid/content/theming/ThemeSettings;

    return-void
.end method

.method private blacklist fallbackParse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "Error, field `"

    if-nez p1, :cond_0

    sget-object p1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "` was not found, defaulting to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "`, defaulting to "

    const-string v3, "` expected to be of type `"

    if-nez v1, :cond_1

    sget-object v1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`, got `"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettingsField;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const-string v0, "` , defaulting to "

    if-nez p1, :cond_3

    sget-object p1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing JSON field `"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettingsField;->validate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object p1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error validating JSON field `"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_5

    sget-object p1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: JSON field `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_5
    return-object p1
.end method

.method public static blacklist getFields(Landroid/content/theming/ThemeSettings;)[Landroid/content/theming/ThemeSettingsField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/theming/ThemeSettings;",
            ")[",
            "Landroid/content/theming/ThemeSettingsField<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/content/theming/ThemeSettingsField;

    new-instance v1, Landroid/content/theming/FieldColorIndex;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda3;-><init>()V

    const-string v4, "android.theme.customization.color_index"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColorIndex;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColor;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda5;-><init>()V

    const-string v4, "android.theme.customization.system_palette"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColor;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColor;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda7;-><init>()V

    const-string v4, "android.theme.customization.accent_color"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColor;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColorSource;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda8;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda9;-><init>()V

    const-string v4, "android.theme.customization.color_source"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColorSource;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldThemeStyle;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda10;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda11;-><init>()V

    const-string v4, "android.theme.customization.theme_style"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldThemeStyle;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColorBoth;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda2;-><init>()V

    const-string v4, "android.theme.customization.color_both"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColorBoth;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 p0, 0x5

    aput-object v1, v0, p0

    return-object v0
.end method


# virtual methods
.method public blacklist fromJSON(Lorg/json/JSONObject;Landroid/content/theming/ThemeSettingsUpdater;)V
    .locals 1

    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/theming/ThemeSettingsField;->fallbackParse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsField;->mSetter:Ljava/util/function/BiConsumer;

    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->mGetter:Ljava/util/function/Function;

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsField;->mDefaults:Landroid/content/theming/ThemeSettings;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist getFieldType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getJsonType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TJ;>;"
        }
    .end annotation
.end method

.method public abstract blacklist parse(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TJ;"
        }
    .end annotation
.end method

.method public blacklist toJSON(Landroid/content/theming/ThemeSettings;Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->mGetter:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettingsField;->validate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettingsField;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/theming/ThemeSettingsField;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` for key `"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`, defaulting to \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error writing JSON primitive, skipping field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract blacklist validate(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
