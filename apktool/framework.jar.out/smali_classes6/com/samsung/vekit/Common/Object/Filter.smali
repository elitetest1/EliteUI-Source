.class public Lcom/samsung/vekit/Common/Object/Filter;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Filter.java"


# static fields
.field private static final blacklist AI_GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/preloadfilters/grain_patch_strong.png"

.field private static final blacklist GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/myfilter/GrainTemplateImage"

.field private static final blacklist NOISE_TYPE_GRAY:I = 0x1

.field private static final blacklist NOISE_TYPE_NONE:I = 0x0

.field private static final blacklist NOISE_TYPE_RGB:I = 0x3


# instance fields
.field private blacklist aiGrainInitialPower:I

.field private blacklist aiGrainIntensity:F

.field private blacklist aiGrainRadius:F

.field private blacklist aiGrainStyle:I

.field private blacklist aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

.field private blacklist auxPath:Ljava/lang/String;

.field private blacklist enableAiGrain:Z

.field private blacklist enableGrain:Z

.field private blacklist enableVignette:Z

.field private blacklist filterType:Lcom/samsung/vekit/Common/Type/FilterType;

.field private blacklist grainPath:Ljava/lang/String;

.field private blacklist grainPower:F

.field private blacklist grainRadius:F

.field private blacklist jsonPath:Ljava/lang/String;

.field private blacklist noiseIntensity:F

.field private blacklist noiseType:I

.field private blacklist path:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    sget-object p1, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    new-instance p1, Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-direct {p1}, Lcom/samsung/vekit/Common/Object/IntensityInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    const p1, 0x3f733333    # 0.95f

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    const/16 p1, 0x24

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/Filter;->id:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/Filter;->name:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/samsung/vekit/Common/Object/Filter;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseJson(Ljava/lang/String;)Z
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "filter_type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "basic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    sget-object p1, Lcom/samsung/vekit/Common/Type/FilterType;->NOISE:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    const-string/jumbo p1, "noise_intensity"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float p1, v5

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    const-string/jumbo p1, "noise_color"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gray"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v0, "rgb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto/16 :goto_1

    :cond_2
    iput v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v3, "myfilter_effect"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ".aux"

    const/16 v6, 0x2e

    if-eqz v3, :cond_4

    :try_start_2
    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    const-string p1, "/system/cameradata/myfilter/GrainTemplateImage"

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    const-string p1, "grain_power"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float p1, v5

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    const-string p1, "grain_radius"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    goto/16 :goto_1

    :cond_4
    const-string v3, "ai_myfilter_effect"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "ai_grain_initial_power"

    const-string v7, "ai_grain_style"

    const-string v8, "ai_grain_radius"

    const-string/jumbo v9, "step"

    const-string v10, "default"

    const-string/jumbo v11, "max"

    const-string/jumbo v12, "min"

    const-string v13, "ai_grain_power"

    if-eqz v0, :cond_5

    :try_start_3
    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->AI_MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMin(I)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setBase(I)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setStep(I)V

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float p1, v5

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    const-string p1, "ai_grain_intensity"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMin(I)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setBase(I)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/Object/IntensityInfo;->setStep(I)V

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float p1, v5

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return v4

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "parseJson: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private blacklist setPath(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string p1, "filterPath is Empty."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string p1, "filterPath doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/cameradata/preloadfilters/grain_patch_strong.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/vekit/Common/Object/Filter;->parseJson(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string p1, "Parse failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist getAiGrainInitialPower()I
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    return p0
.end method

.method public blacklist getAiGrainIntensity()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    return p0
.end method

.method public blacklist getAiGrainPower()Lcom/samsung/vekit/Common/Object/IntensityInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    return-object p0
.end method

.method public blacklist getAiGrainRadius()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    return p0
.end method

.method public blacklist getAiGrainStyle()I
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    return p0
.end method

.method public blacklist getAuxPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFilterType()Lcom/samsung/vekit/Common/Type/FilterType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    return-object p0
.end method

.method public blacklist getGrainPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getGrainPower()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    return p0
.end method

.method public blacklist getGrainRadius()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    return p0
.end method

.method public blacklist getJsonPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNoiseIntensity()F
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    return p0
.end method

.method public blacklist getNoiseType()I
    .locals 0

    iget p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    return p0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isEnableAiGrain()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    return p0
.end method

.method public blacklist isEnableGrain()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    return p0
.end method

.method public blacklist isEnableVignette()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    return p0
.end method

.method public blacklist setAiGrainInitialPower(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainInitialPower:I

    return-void
.end method

.method public blacklist setAiGrainIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainIntensity:F

    return-void
.end method

.method public blacklist setAiGrainPower(Lcom/samsung/vekit/Common/Object/IntensityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiIntensityInfo:Lcom/samsung/vekit/Common/Object/IntensityInfo;

    return-void
.end method

.method public blacklist setAiGrainRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainRadius:F

    return-void
.end method

.method public blacklist setAiGrainStyle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->aiGrainStyle:I

    return-void
.end method

.method public blacklist setEnableAiGrain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableAiGrain:Z

    return-void
.end method
