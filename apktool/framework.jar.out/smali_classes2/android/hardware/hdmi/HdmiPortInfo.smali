.class public final Landroid/hardware/hdmi/HdmiPortInfo;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPortInfo$Builder;,
        Landroid/hardware/hdmi/HdmiPortInfo$PortType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PORT_INPUT:I = 0x0

.field public static final whitelist PORT_OUTPUT:I = 0x1


# instance fields
.field private final greylist-max-o mAddress:I

.field private final greylist-max-o mArcSupported:Z

.field private final greylist-max-o mCecSupported:Z

.field private final blacklist mEarcSupported:Z

.field private final greylist-max-o mId:I

.field private final greylist-max-o mMhlSupported:Z

.field private final greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddress(Landroid/hardware/hdmi/HdmiPortInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArcSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCecSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEarcSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/hardware/hdmi/HdmiPortInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMhlSupported(Landroid/hardware/hdmi/HdmiPortInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/hardware/hdmi/HdmiPortInfo;)I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiPortInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIZZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    iput p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    iput p3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    iput-boolean p6, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    iput-boolean p5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmId(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmType(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmAddress(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmCecSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmArcSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmEarcSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->-$$Nest$fgetmMhlSupported(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;Landroid/hardware/hdmi/HdmiPortInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(Landroid/hardware/hdmi/HdmiPortInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/hardware/hdmi/HdmiPortInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/hardware/hdmi/HdmiPortInfo;

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    iget v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    iget v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    iget v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    iget-boolean v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    iget-boolean v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    iget-boolean v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    iget-boolean p1, p1, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getAddress()I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isArcSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    return p0
.end method

.method public whitelist isCecSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    return p0
.end method

.method public whitelist isEarcSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    return p0
.end method

.method public whitelist isMhlSupported()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    return p0
.end method

.method public blacklist toBuilder()Landroid/hardware/hdmi/HdmiPortInfo$Builder;
    .locals 2

    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiPortInfo;Landroid/hardware/hdmi/HdmiPortInfo-IA;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "port_id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    if-nez v1, :cond_0

    const-string v1, "HDMI_IN"

    goto :goto_0

    :cond_0
    const-string v1, "HDMI_OUT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%04x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", arc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mhl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", earc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mEarcSupported:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
