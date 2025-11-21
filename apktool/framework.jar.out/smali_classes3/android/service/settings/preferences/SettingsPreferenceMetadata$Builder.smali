.class public final Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
.super Ljava/lang/Object;
.source "SettingsPreferenceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/SettingsPreferenceMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAvailable:Z

.field private blacklist mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mLaunchIntent:Landroid/content/Intent;

.field private blacklist mReadPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestricted:Z

.field private final blacklist mScreenKey:Ljava/lang/String;

.field private blacklist mSensitivity:I

.field private blacklist mSummary:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mWritable:Z

.field private blacklist mWritePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mAvailable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBreadcrumbs(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabled(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLaunchIntent(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mLaunchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadPermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mReadPermissions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestricted(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mScreenKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensitivity(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritePermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritePermissions:Ljava/util/List;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mBreadcrumbs:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mReadPermissions:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritePermissions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mEnabled:Z

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mAvailable:Z

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritable:Z

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mRestricted:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mScreenKey:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mKey:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "screenKey cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/SettingsPreferenceMetadata;
    .locals 3

    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mLaunchIntent:Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    invoke-direct {v0, p0, v2}, Landroid/service/settings/preferences/SettingsPreferenceMetadata;-><init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;Landroid/service/settings/preferences/SettingsPreferenceMetadata-IA;)V

    return-object v0
.end method

.method public whitelist setAvailable(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mAvailable:Z

    return-object p0
.end method

.method public blacklist setBreadcrumbs(Ljava/util/List;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setEnabled(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mEnabled:Z

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setLaunchIntent(Landroid/content/Intent;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mLaunchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist setReadPermissions(Ljava/util/List;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mReadPermissions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setRestricted(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mRestricted:Z

    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/String;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setWritable(Z)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritable:Z

    return-object p0
.end method

.method public whitelist setWritePermissions(Ljava/util/List;)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mWritePermissions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setWriteSensitivity(I)Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;
    .locals 0

    iput p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->mSensitivity:I

    return-object p0
.end method
