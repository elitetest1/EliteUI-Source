.class public final Landroid/service/settings/preferences/SettingsPreferenceMetadata;
.super Ljava/lang/Object;
.source "SettingsPreferenceMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;,
        Landroid/service/settings/preferences/SettingsPreferenceMetadata$WriteSensitivity;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEEPLINK_ONLY:I = 0x2

.field public static final whitelist EXPECT_POST_CONFIRMATION:I = 0x1

.field public static final whitelist NO_DIRECT_ACCESS:I = 0x3

.field public static final whitelist NO_SENSITIVITY:I


# instance fields
.field private final blacklist mAvailable:Z

.field private final blacklist mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnabled:Z

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mLaunchIntent:Landroid/content/Intent;

.field private final blacklist mReadPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestricted:Z

.field private final blacklist mScreenKey:Ljava/lang/String;

.field private final blacklist mSensitivity:I

.field private final blacklist mSummary:Ljava/lang/String;

.field private final blacklist mTitle:Ljava/lang/String;

.field private final blacklist mWritable:Z

.field private final blacklist mWritePermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SettingsPreferenceMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmTitle(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmSummary(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmBreadcrumbs(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmReadPermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmWritePermissions(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmEnabled(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmAvailable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmWritable(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmRestricted(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmSensitivity(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmLaunchIntent(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;->-$$Nest$fgetmExtras(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/settings/preferences/SettingsPreferenceMetadata$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;Landroid/service/settings/preferences/SettingsPreferenceMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceMetadata;-><init>(Landroid/service/settings/preferences/SettingsPreferenceMetadata$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getBreadcrumbs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getLaunchIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist getReadPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getScreenKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getWritePermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getWriteSensitivity()I
    .locals 0

    iget p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    return p0
.end method

.method public whitelist isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    return p0
.end method

.method public whitelist isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    return p0
.end method

.method public whitelist isRestricted()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    return p0
.end method

.method public whitelist isWritable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mScreenKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mBreadcrumbs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mReadPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritePermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mSensitivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceMetadata;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
