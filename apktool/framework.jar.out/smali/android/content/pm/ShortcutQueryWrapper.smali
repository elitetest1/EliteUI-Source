.class public final Landroid/content/pm/ShortcutQueryWrapper;
.super Landroid/content/pm/LauncherApps$ShortcutQuery;
.source "ShortcutQueryWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/ShortcutQueryWrapper$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutQueryWrapper$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutQueryWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/ShortcutQueryWrapper;-><init>()V

    iget-wide v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    iput-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mLocusIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    iget p1, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    iput p1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-class v7, Landroid/content/LocusId;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-class v8, Landroid/content/LocusId;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput-wide v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    iput-object v3, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    iput-object v6, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    iput p1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    const-class p1, Landroid/content/pm/LauncherApps$ShortcutQuery$QueryFlags;

    iget p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-static {p1, v4, p0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getActivity()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist getChangedSince()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    return-wide v0
.end method

.method public blacklist getLocusIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getQueryFlags()I
    .locals 0

    iget p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    return p0
.end method

.method public blacklist getShortcutIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ShortcutQueryWrapper {  }"

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :cond_6
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_7
    iget p0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
