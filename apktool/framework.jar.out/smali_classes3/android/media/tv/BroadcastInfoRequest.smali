.class public abstract Landroid/media/tv/BroadcastInfoRequest;
.super Ljava/lang/Object;
.source "BroadcastInfoRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/BroadcastInfoRequest$RequestOption;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/BroadcastInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_OPTION_AUTO_UPDATE:I = 0x1

.field public static final whitelist REQUEST_OPTION_ONESHOT:I = 0x3

.field public static final whitelist REQUEST_OPTION_ONEWAY:I = 0x2

.field public static final whitelist REQUEST_OPTION_REPEAT:I


# instance fields
.field private final blacklist mOption:I

.field private final blacklist mRequestId:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/BroadcastInfoRequest$1;

    invoke-direct {v0}, Landroid/media/tv/BroadcastInfoRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    iput p2, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    iput p3, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getOption()I
    .locals 0

    iget p0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return p0
.end method

.method public whitelist getRequestId()I
    .locals 0

    iget p0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
