.class public final Landroid/window/ActivityWindowInfo;
.super Ljava/lang/Object;
.source "ActivityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ActivityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsEmbedded:Z

.field private final blacklist mTaskBounds:Landroid/graphics/Rect;

.field private final blacklist mTaskFragmentBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/ActivityWindowInfo$1;

    invoke-direct {v0}, Landroid/window/ActivityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ActivityWindowInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ActivityWindowInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    return-void
.end method

.method public static blacklist getActivityWindowInfo(Landroid/app/Activity;)Landroid/window/ActivityWindowInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/window/ActivityWindowInfo;

    iget-boolean v2, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    iget-boolean v3, p1, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getTaskBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getTaskFragmentBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public blacklist isEmbedded()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    return p0
.end method

.method public blacklist set(Landroid/window/ActivityWindowInfo;)V
    .locals 2

    iget-boolean v0, p1, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    iget-object v1, p1, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, p1}, Landroid/window/ActivityWindowInfo;->set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    iget-object p1, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityWindowInfo{isEmbedded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", taskBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskFragmentBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/window/ActivityWindowInfo;->mIsEmbedded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/window/ActivityWindowInfo;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/window/ActivityWindowInfo;->mTaskFragmentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
