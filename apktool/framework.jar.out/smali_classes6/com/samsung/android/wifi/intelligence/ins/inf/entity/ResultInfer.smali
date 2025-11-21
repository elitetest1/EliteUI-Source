.class public final Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;
.super Ljava/lang/Object;
.source "ResultInfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TAG:Ljava/lang/String; = "ResultInfer"


# instance fields
.field private final blacklist label:I

.field private final blacklist nsmProb:F

.field private final blacklist nsmThreshold:F

.field private final blacklist pathProb:F

.field private final blacklist pathThreshold:F

.field private final blacklist sufficientData:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmProb:F

    iput p2, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathProb:F

    iput p3, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmThreshold:F

    iput p4, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathThreshold:F

    iput-boolean p5, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->sufficientData:Z

    iput p6, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->label:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmProb:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathProb:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmThreshold:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathThreshold:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->sufficientData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->label:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fromJsonString(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;

    const-string/jumbo p0, "nsm_prob"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string/jumbo p0, "path_prob"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    const-string/jumbo p0, "nsm_threshold"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    const-string/jumbo p0, "path_threshold"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    const-string/jumbo p0, "sufficient_data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string p0, "label"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;-><init>(FFFFZI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot parse Json String:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResultInfer"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getLabel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->label:I

    return p0
.end method

.method public blacklist getNsmProb()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmProb:F

    return p0
.end method

.method public blacklist getNsmThreshold()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmThreshold:F

    return p0
.end method

.method public blacklist getPathProb()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathProb:F

    return p0
.end method

.method public blacklist getPathThreshold()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathThreshold:F

    return p0
.end method

.method public blacklist isSufficientData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->sufficientData:Z

    return p0
.end method

.method public blacklist toJsonString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"nsm_prob\": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmProb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"path_prob\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathProb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"nsm_threshold\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"path_threshold\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", \"sufficient_data\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->sufficientData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \"label\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->label:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmProb:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathProb:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->nsmThreshold:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->pathThreshold:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->sufficientData:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;->label:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
