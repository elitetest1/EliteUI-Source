.class public final Landroid/app/wallpaper/WallpaperInstance;
.super Ljava/lang/Object;
.source "WallpaperInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpaper/WallpaperInstance;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ID:Ljava/lang/String; = "default_id"


# instance fields
.field private final blacklist mDescription:Landroid/app/wallpaper/WallpaperDescription;

.field private final blacklist mIdOverride:Ljava/lang/String;

.field private final blacklist mInfo:Landroid/app/WallpaperInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/wallpaper/WallpaperInstance$1;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperInstance$1;-><init>()V

    sput-object v0, Landroid/app/wallpaper/WallpaperInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/wallpaper/WallpaperInstance;-><init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    iput-object p2, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    iput-object p3, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    sget-object v0, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaper/WallpaperDescription;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/wallpaper/WallpaperInstance;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Landroid/app/wallpaper/WallpaperInstance;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    iget-object v3, p1, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v3, p1, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public whitelist getDescription()Landroid/app/wallpaper/WallpaperDescription;
    .locals 0

    iget-object p0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    return-object p0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperDescription;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "default_id"

    return-object p0
.end method

.method public whitelist getInfo()Landroid/app/WallpaperInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperInstance;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/app/wallpaper/WallpaperInstance;->mIdOverride:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
