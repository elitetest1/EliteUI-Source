.class public final Landroid/media/tv/SignalingDataInfo;
.super Ljava/lang/Object;
.source "SignalingDataInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/SignalingDataInfo$ContentEncoding;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_ENCODING_BASE64:Ljava/lang/String; = "Base64"

.field public static final whitelist CONTENT_ENCODING_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SignalingDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LLS_NO_GROUP_ID:I = -0x1


# instance fields
.field private final blacklist mEncoding:Ljava/lang/String;

.field private final blacklist mGroup:I

.field private final blacklist mSignalingDataType:Ljava/lang/String;

.field private final blacklist mTable:Ljava/lang/String;

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/SignalingDataInfo$1;

    invoke-direct {v0}, Landroid/media/tv/SignalingDataInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/SignalingDataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object v0, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    const-class v4, Landroid/annotation/NonNull;

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v5, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    iput v3, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    iput-object p1, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v5, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    iput p4, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    const-string p1, "UTF-8"

    iput-object p1, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    iput p4, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    iput-object p5, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getGroup()I
    .locals 0

    iget p0, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    return p0
.end method

.method public whitelist getSignalingDataType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTable()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget p0, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/media/tv/SignalingDataInfo;->mTable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/tv/SignalingDataInfo;->mSignalingDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/media/tv/SignalingDataInfo;->mVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/tv/SignalingDataInfo;->mGroup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/media/tv/SignalingDataInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
