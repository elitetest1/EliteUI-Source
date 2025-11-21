.class public final Lcom/samsung/android/graphics/imagefilter/AssembledShader;
.super Ljava/lang/Object;
.source "AssembledShader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AssembledShader"


# instance fields
.field private final blacklist assemble:Z

.field private final blacklist filterMask:I

.field private final blacklist name:Ljava/lang/String;

.field private final blacklist runtimeShader:Landroid/graphics/RuntimeShader;

.field private final blacklist shaderString:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->filterMask:I

    iput-object p2, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->shaderString:Ljava/lang/String;

    new-instance p1, Landroid/graphics/RuntimeShader;

    invoke-direct {p1, p2}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->runtimeShader:Landroid/graphics/RuntimeShader;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->assemble:Z

    const-string p1, "CustomShader"

    iput-object p1, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/imagefilter/FilterEffect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/imagefilter/FilterEffect;->getFilterType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->filterMask:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->shaderString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->assemble:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->runtimeShader:Landroid/graphics/RuntimeShader;

    invoke-virtual {p1}, Lcom/samsung/android/graphics/imagefilter/FilterEffect;->getFilterName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getFilterMask()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->filterMask:I

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->name:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRuntimeShader()Landroid/graphics/RuntimeShader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->runtimeShader:Landroid/graphics/RuntimeShader;

    return-object p0
.end method

.method public blacklist getShader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->shaderString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isAssemble()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/graphics/imagefilter/AssembledShader;->assemble:Z

    return p0
.end method
