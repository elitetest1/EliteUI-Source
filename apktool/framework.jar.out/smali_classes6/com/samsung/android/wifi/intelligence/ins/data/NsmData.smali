.class public final Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;
.super Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;
.source "NsmData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INDEX_BSSID:I = 0x5

.field private static final blacklist INDEX_CM_LABEL:I = 0x6

.field private static final blacklist INDEX_FLUSH_TIMESTAMP:I = 0x8

.field private static final blacklist INDEX_LABEL:I = 0x7

.field private static final blacklist INDEX_LATENCY:I = 0x1

.field private static final blacklist INDEX_RSSI:I = 0x2

.field private static final blacklist INDEX_RX_SPEED:I = 0x3

.field private static final blacklist INDEX_TIMESTAMP:I = 0x0

.field private static final blacklist INDEX_TX_SPEED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "NsmData"


# instance fields
.field private final blacklist BSSID:Ljava/lang/String;

.field private blacklist latency:F

.field private final blacklist outageData:Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

.field private blacklist rssi:F

.field private blacklist rxLinkSpeedMbps:F

.field private blacklist txSpeed:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->txSpeed:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rssi:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->latency:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rxLinkSpeedMbps:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->BSSID:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->outageData:Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/intelligence/ins/data/NsmData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIFFFFLjava/lang/String;)V
    .locals 11

    const-string v9, "0"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;-><init>(Ljava/lang/String;IIFFFFLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIFFFFLjava/lang/String;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V
    .locals 11

    const-string v9, "0"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;-><init>(Ljava/lang/String;IIFFFFLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIFFFFLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->timestamp:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->cmLabel:I

    iput p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->label:I

    iput p4, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->latency:F

    iput p5, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rssi:F

    iput p6, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rxLinkSpeedMbps:F

    iput p7, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->txSpeed:F

    iput-object p8, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->BSSID:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->flushTimestamp:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->outageData:Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    return-void
.end method

.method public static blacklist fromCsvString(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;
    .locals 18

    move-object/from16 v1, p0

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const-string v5, "Invalid CSV string: "

    const-string v6, "NsmData"

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x19

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
    new-instance v7, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    const/16 v17, 0x0

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;-><init>(Ljava/lang/String;IIFFFFLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V
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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timestamp,latency,rssi,rxLinkSpeedMbps,txSpeed,BSSID,cmLabel,label,flushTimestamp,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getCsvHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getBssid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->BSSID:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLatency()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->latency:F

    return p0
.end method

.method public blacklist getOutageData()Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->outageData:Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    return-object p0
.end method

.method public blacklist getRssi()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rssi:F

    return p0
.end method

.method public blacklist getRxLinkSpeedMbps()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rxLinkSpeedMbps:F

    return p0
.end method

.method public blacklist getTxSpeed()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->txSpeed:F

    return p0
.end method

.method public blacklist setLatency(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->latency:F

    return-void
.end method

.method public blacklist setRssi(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rssi:F

    return-void
.end method

.method public blacklist setRxLinkSpeedMbps(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rxLinkSpeedMbps:F

    return-void
.end method

.method public blacklist setTxSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->txSpeed:F

    return-void
.end method

.method public blacklist toCsvString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->latency:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rssi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rxLinkSpeedMbps:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->txSpeed:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->cmLabel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->label:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->flushTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->outageData:Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->toCsvString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->txSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rssi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->latency:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->rxLinkSpeedMbps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->outageData:Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
