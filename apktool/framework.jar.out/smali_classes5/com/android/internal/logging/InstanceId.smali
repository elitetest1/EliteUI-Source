.class public final Lcom/android/internal/logging/InstanceId;
.super Ljava/lang/Object;
.source "InstanceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/logging/InstanceId;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist INSTANCE_ID_MAX:I = 0x100000


# instance fields
.field private final blacklist mId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/InstanceId$1;

    invoke-direct {v0}, Lcom/android/internal/logging/InstanceId$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/logging/InstanceId-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/logging/InstanceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;
    .locals 1

    new-instance v0, Lcom/android/internal/logging/InstanceId;

    invoke-direct {v0, p0}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    check-cast p1, Lcom/android/internal/logging/InstanceId;

    iget p1, p1, Lcom/android/internal/logging/InstanceId;->mId:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Lcom/android/internal/logging/InstanceId;->mId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
