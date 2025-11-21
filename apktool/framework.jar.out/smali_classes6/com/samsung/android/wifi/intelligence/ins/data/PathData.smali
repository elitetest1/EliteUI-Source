.class public final Lcom/samsung/android/wifi/intelligence/ins/data/PathData;
.super Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;
.source "PathData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/PathData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INDEX_AIR:I = 0x4

.field public static final blacklist INDEX_CM_LABEL:I = 0x6

.field public static final blacklist INDEX_FLUSH_TIMESTAMP:I = 0x9

.field public static final blacklist INDEX_LABEL:I = 0x7

.field public static final blacklist INDEX_MAGNETIC_X:I = 0x1

.field public static final blacklist INDEX_MAGNETIC_Y:I = 0x2

.field public static final blacklist INDEX_MAGNETIC_Z:I = 0x3

.field public static final blacklist INDEX_NO_MOVE:I = 0x8

.field public static final blacklist INDEX_RSSI:I = 0x5

.field public static final blacklist INDEX_TIMESTAMP:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "PathData"


# instance fields
.field private final blacklist air:F

.field private blacklist mMagneticDelta:F

.field private final blacklist mMagneticMagnitude:F

.field private blacklist mSequenceMagneticDeltaSum:F

.field private final blacklist magneticX:F

.field private final blacklist magneticY:F

.field private final blacklist magneticZ:F

.field private blacklist noMove:I

.field private final blacklist rssi:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticZ:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->air:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->rssi:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->noMove:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticMagnitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticDelta:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mSequenceMagneticDeltaSum:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/intelligence/ins/data/PathData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FIIFFFF)V
    .locals 11

    const/4 v9, 0x0

    const-string v10, "0"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;-><init>(Ljava/lang/String;FIIFFFFILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FIIFFFFILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->timestamp:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->air:F

    iput p4, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->cmLabel:I

    iput p3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->label:I

    iput p5, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticX:F

    iput p6, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticY:F

    iput p7, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticZ:F

    iput p8, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->rssi:F

    iput p9, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->noMove:I

    iput-object p10, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->flushTimestamp:Ljava/lang/String;

    mul-float/2addr p5, p5

    mul-float/2addr p6, p6

    add-float/2addr p5, p6

    mul-float/2addr p7, p7

    add-float/2addr p5, p7

    float-to-double p1, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticMagnitude:F

    return-void
.end method

.method public static blacklist fromCsvString(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/data/PathData;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const-string v5, "Invalid CSV string: "

    const-string v6, "PathData"

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    new-instance v7, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;-><init>(Ljava/lang/String;FIIFFFFILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method public static blacklist getCsvHeader()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "timestamp,magneticX,magneticY,magneticZ,air,rssi,cmLabel,label,noMove,flushTimestamp\n"

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAir()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->air:F

    return p0
.end method

.method public blacklist getMagneticDelta()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticDelta:F

    return p0
.end method

.method public blacklist getMagneticMagnitude()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticMagnitude:F

    return p0
.end method

.method public blacklist getMagneticX()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticX:F

    return p0
.end method

.method public blacklist getMagneticY()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticY:F

    return p0
.end method

.method public blacklist getMagneticZ()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticZ:F

    return p0
.end method

.method public blacklist getNoMove()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->noMove:I

    return p0
.end method

.method public blacklist getRssi()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->rssi:F

    return p0
.end method

.method public blacklist getSequenceMagneticDeltaSum()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mSequenceMagneticDeltaSum:F

    return p0
.end method

.method public blacklist getTimestamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMagneticDelta(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticDelta:F

    return-void
.end method

.method public blacklist setNoMove(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->noMove:I

    return-void
.end method

.method public blacklist setSequenceDeltaSum(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mSequenceMagneticDeltaSum:F

    return-void
.end method

.method public blacklist toCsvString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticZ:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->air:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->rssi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->cmLabel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->label:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->noMove:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->flushTimestamp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->magneticZ:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->air:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->rssi:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->noMove:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticMagnitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mMagneticDelta:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->mSequenceMagneticDeltaSum:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
