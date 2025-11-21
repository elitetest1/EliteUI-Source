.class public final Landroid/media/quality/ActiveProcessingPicture;
.super Ljava/lang/Object;
.source "ActiveProcessingPicture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mForGlobal:Z

.field private final blacklist mId:I

.field private final blacklist mProfileId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/quality/ActiveProcessingPicture$1;

    invoke-direct {v0}, Landroid/media/quality/ActiveProcessingPicture$1;-><init>()V

    sput-object v0, Landroid/media/quality/ActiveProcessingPicture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    iput-object p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    iput-object p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    return p0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isForGlobal()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
