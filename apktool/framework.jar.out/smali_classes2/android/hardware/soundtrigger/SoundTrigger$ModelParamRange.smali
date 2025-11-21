.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelParamRange"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnd:I

.field private final blacklist mStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/soundtrigger/SoundTrigger-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(Landroid/os/Parcel;)V

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
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public whitelist getEnd()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    return p0
.end method

.method public whitelist getStart()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ModelParamRange [start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
