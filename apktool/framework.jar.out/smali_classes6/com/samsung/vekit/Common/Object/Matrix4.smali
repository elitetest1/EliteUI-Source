.class public Lcom/samsung/vekit/Common/Object/Matrix4;
.super Ljava/lang/Object;
.source "Matrix4.java"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist matrix:[[D


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->identity()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-void
.end method

.method public constructor blacklist <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set([F)V

    return-void
.end method

.method public constructor blacklist <init>([[D)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Matrix4"

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set([[D)V

    return-void
.end method

.method private blacklist getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public blacklist divide(D)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-string p0, "Matrix4"

    const-string p1, "Non zero divider required"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    div-double/2addr v6, p1

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {p0, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object p0
.end method

.method public blacklist get(II)F
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object p0, p0, p2

    aget-wide p0, p0, p1

    double-to-float p0, p0

    return p0
.end method

.method public blacklist getAxisX()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x2

    aget-object p0, p0, v4

    aget-wide v4, p0, v2

    double-to-float p0, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getAxisY()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x2

    aget-object p0, p0, v4

    aget-wide v4, p0, v2

    double-to-float p0, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getAxisZ()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget-wide v3, v1, v2

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-wide v3, v3, v2

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object p0, p0, v2

    aget-wide v4, p0, v2

    double-to-float p0, v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getColumn(I)Lcom/samsung/vekit/Common/Object/Vector4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setX(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setY(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setZ(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object p0, p0, p1

    const/4 p1, 0x3

    aget-wide p0, p0, p1

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Vector4;->setW(Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getPosition()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->get(II)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Vector3;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Object/Vector3;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Object/Vector3;->getZ()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    new-instance v6, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v6}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    double-to-float v0, v2

    const/4 v2, 0x1

    invoke-virtual {v6, v2, v2, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    double-to-float v0, v4

    const/4 v3, 0x2

    invoke-virtual {v6, v3, v3, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v6}, Lcom/samsung/vekit/Common/Object/Matrix4;->inverse()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    new-instance v4, Lcom/samsung/vekit/Common/Object/Matrix4;

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    invoke-direct {v4, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    const/4 p0, 0x3

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v1, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v4, p0, v2, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v4, p0, v3, v5}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v4, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;
    .locals 15

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-wide v3, v3, v2

    const/4 v5, 0x1

    aget-object v6, v1, v5

    aget-wide v6, v6, v5

    add-double v8, v3, v6

    const/4 v10, 0x2

    aget-object v1, v1, v10

    aget-wide v11, v1, v10

    add-double/2addr v8, v11

    double-to-float v1, v8

    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    const/high16 v9, 0x3f000000    # 0.5f

    if-lez v8, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v1, v9

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    div-float/2addr v9, v1

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v10

    aget-wide v3, v3, v5

    aget-object v1, v1, v5

    aget-wide v6, v1, v10

    sub-double/2addr v3, v6

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v2

    aget-wide v3, v3, v10

    aget-object v1, v1, v10

    aget-wide v6, v1, v2

    sub-double/2addr v3, v6

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, p0, v5

    aget-wide v3, v1, v2

    aget-object p0, p0, v2

    aget-wide v1, p0, v5

    sub-double/2addr v3, v1

    double-to-float p0, v3

    mul-float/2addr p0, v9

    float-to-double v1, p0

    iput-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    return-object v0

    :cond_0
    cmpl-double v1, v3, v6

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-lez v1, :cond_1

    cmpl-double v1, v3, v11

    if-lez v1, :cond_1

    add-double/2addr v3, v13

    sub-double/2addr v3, v6

    sub-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v1, v9

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    div-float/2addr v9, v1

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v2

    aget-wide v3, v3, v5

    aget-object v1, v1, v5

    aget-wide v6, v1, v2

    add-double/2addr v3, v6

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v2

    aget-wide v3, v3, v10

    aget-object v1, v1, v10

    aget-wide v1, v1, v2

    add-double/2addr v3, v1

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, p0, v10

    aget-wide v1, v1, v5

    aget-object p0, p0, v5

    aget-wide v3, p0, v10

    sub-double/2addr v1, v3

    double-to-float p0, v1

    mul-float/2addr p0, v9

    float-to-double v1, p0

    iput-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-object v0

    :cond_1
    cmpl-double v1, v6, v11

    if-lez v1, :cond_2

    add-double/2addr v6, v13

    sub-double/2addr v6, v3

    sub-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v1, v9

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    div-float/2addr v9, v1

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v2

    aget-wide v3, v3, v5

    aget-object v1, v1, v5

    aget-wide v6, v1, v2

    add-double/2addr v3, v6

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v5

    aget-wide v3, v3, v10

    aget-object v1, v1, v10

    aget-wide v5, v1, v5

    add-double/2addr v3, v5

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, p0, v2

    aget-wide v3, v1, v10

    aget-object p0, p0, v10

    aget-wide v1, p0, v2

    sub-double/2addr v3, v1

    double-to-float p0, v3

    mul-float/2addr p0, v9

    float-to-double v1, p0

    iput-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-object v0

    :cond_2
    add-double/2addr v11, v13

    sub-double/2addr v11, v3

    sub-double/2addr v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v1, v9

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->z:D

    div-float/2addr v9, v1

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v2

    aget-wide v3, v3, v10

    aget-object v1, v1, v10

    aget-wide v6, v1, v2

    add-double/2addr v3, v6

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->x:D

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v1, v5

    aget-wide v3, v3, v10

    aget-object v1, v1, v10

    aget-wide v6, v1, v5

    add-double/2addr v3, v6

    double-to-float v1, v3

    mul-float/2addr v1, v9

    float-to-double v3, v1

    iput-wide v3, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->y:D

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v1, p0, v5

    aget-wide v3, v1, v2

    aget-object p0, p0, v2

    aget-wide v1, p0, v5

    sub-double/2addr v3, v1

    double-to-float p0, v3

    mul-float/2addr p0, v9

    float-to-double v1, p0

    iput-wide v1, v0, Lcom/samsung/vekit/Common/Object/Quaternion;->w:D

    return-object v0
.end method

.method public blacklist getRotation()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getPureRotationMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getQuaternion()Lcom/samsung/vekit/Common/Object/Quaternion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getRotation()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRow(I)Lcom/samsung/vekit/Common/Object/Vector4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/samsung/vekit/Common/Object/Vector4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setX(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setY(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-wide v1, v1, p1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/Object/Vector4;->setZ(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v1, 0x3

    aget-object p0, p0, v1

    aget-wide p0, p0, p1

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Vector4;->setW(Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getScale()Lcom/samsung/vekit/Common/Object/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/Vector3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisX()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisY()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->getAxisZ()Lcom/samsung/vekit/Common/Object/Vector3;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/vekit/Common/Object/Matrix4;->getScale(Lcom/samsung/vekit/Common/Object/Vector3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist identity()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v3

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v1

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist inverse()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 39

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x2

    aget-wide v6, v4, v5

    const/4 v8, 0x1

    aget-object v9, v2, v8

    const/4 v10, 0x3

    aget-wide v11, v9, v10

    mul-double v13, v6, v11

    aget-wide v15, v9, v5

    aget-wide v17, v4, v10

    mul-double v19, v15, v17

    sub-double v13, v13, v19

    aget-object v19, v2, v5

    aget-wide v20, v19, v10

    mul-double v22, v6, v20

    aget-wide v24, v19, v5

    mul-double v26, v24, v17

    sub-double v22, v22, v26

    aget-object v2, v2, v10

    aget-wide v26, v2, v10

    mul-double v6, v6, v26

    aget-wide v28, v2, v5

    mul-double v17, v17, v28

    sub-double v6, v6, v17

    mul-double v17, v15, v20

    mul-double v30, v24, v11

    sub-double v17, v17, v30

    mul-double v15, v15, v26

    mul-double v11, v11, v28

    sub-double/2addr v15, v11

    mul-double v24, v24, v26

    mul-double v28, v28, v20

    sub-double v24, v24, v28

    aget-wide v11, v9, v8

    mul-double v20, v24, v11

    aget-wide v26, v19, v8

    mul-double v28, v15, v26

    sub-double v20, v20, v28

    aget-wide v28, v2, v8

    mul-double v30, v17, v28

    add-double v20, v20, v30

    aget-wide v30, v4, v8

    mul-double v32, v24, v30

    mul-double v34, v6, v26

    sub-double v32, v32, v34

    mul-double v34, v22, v28

    move-wide/from16 v37, v11

    add-double v10, v32, v34

    neg-double v10, v10

    mul-double v32, v15, v30

    mul-double v34, v6, v37

    sub-double v32, v32, v34

    mul-double v28, v28, v13

    add-double v32, v32, v28

    mul-double v30, v30, v17

    mul-double v28, v22, v37

    sub-double v30, v30, v28

    mul-double v26, v26, v13

    move-wide/from16 v28, v6

    add-double v5, v30, v26

    neg-double v5, v5

    aget-wide v26, v4, v3

    mul-double v26, v26, v20

    aget-wide v30, v9, v3

    mul-double v30, v30, v10

    add-double v26, v26, v30

    aget-wide v30, v19, v3

    mul-double v30, v30, v32

    add-double v26, v26, v30

    aget-wide v30, v2, v3

    mul-double v30, v30, v5

    add-double v26, v26, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    div-double v30, v30, v26

    move-wide/from16 v26, v13

    mul-double v12, v20, v30

    double-to-float v4, v12

    invoke-virtual {v1, v3, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    mul-double v10, v10, v30

    double-to-float v4, v10

    invoke-virtual {v1, v8, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    mul-double v9, v32, v30

    double-to-float v4, v9

    const/4 v12, 0x2

    invoke-virtual {v1, v12, v4}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    mul-double v5, v5, v30

    double-to-float v2, v5

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v2, v8

    aget-wide v5, v5, v3

    mul-double v5, v5, v24

    aget-object v7, v2, v12

    aget-wide v9, v7, v3

    mul-double/2addr v9, v15

    sub-double/2addr v5, v9

    aget-object v2, v2, v4

    aget-wide v9, v2, v3

    mul-double v9, v9, v17

    add-double/2addr v5, v9

    neg-double v4, v5

    mul-double v4, v4, v30

    double-to-float v2, v4

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    mul-double v24, v24, v4

    const/4 v12, 0x2

    aget-object v4, v2, v12

    aget-wide v4, v4, v3

    mul-double v6, v28, v4

    sub-double v24, v24, v6

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v4, v2, v3

    mul-double v4, v4, v22

    add-double v24, v24, v4

    mul-double v4, v24, v30

    double-to-float v2, v4

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    mul-double/2addr v15, v4

    aget-object v4, v2, v8

    aget-wide v4, v4, v3

    mul-double v6, v28, v4

    sub-double/2addr v15, v6

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v4, v2, v3

    mul-double v13, v26, v4

    add-double v4, v15, v13

    neg-double v4, v4

    mul-double v4, v4, v30

    double-to-float v2, v4

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    mul-double v17, v17, v4

    aget-object v4, v2, v8

    aget-wide v4, v4, v3

    mul-double v22, v22, v4

    sub-double v17, v17, v22

    const/4 v12, 0x2

    aget-object v2, v2, v12

    aget-wide v4, v2, v3

    mul-double v13, v26, v4

    add-double v17, v17, v13

    mul-double v4, v17, v30

    double-to-float v2, v4

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v5, v4, v8

    aget-object v7, v2, v8

    const/16 v36, 0x3

    aget-wide v9, v7, v36

    mul-double v13, v5, v9

    aget-wide v15, v7, v8

    aget-wide v17, v4, v36

    mul-double v19, v15, v17

    sub-double v13, v13, v19

    const/4 v12, 0x2

    aget-object v4, v2, v12

    aget-wide v19, v4, v36

    mul-double v21, v5, v19

    aget-wide v23, v4, v8

    mul-double v25, v23, v17

    sub-double v21, v21, v25

    aget-object v2, v2, v36

    aget-wide v25, v2, v36

    mul-double v5, v5, v25

    aget-wide v27, v2, v8

    mul-double v17, v17, v27

    sub-double v5, v5, v17

    mul-double v17, v15, v19

    mul-double v32, v23, v9

    sub-double v17, v17, v32

    mul-double v15, v15, v25

    mul-double v9, v9, v27

    sub-double/2addr v15, v9

    mul-double v23, v23, v25

    mul-double v27, v27, v19

    sub-double v23, v23, v27

    aget-wide v9, v7, v3

    mul-double v9, v9, v23

    aget-wide v19, v4, v3

    mul-double v19, v19, v15

    sub-double v9, v9, v19

    aget-wide v19, v2, v3

    mul-double v19, v19, v17

    add-double v9, v9, v19

    mul-double v9, v9, v30

    double-to-float v2, v9

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v9, v4, v3

    mul-double v23, v23, v9

    const/4 v12, 0x2

    aget-object v4, v2, v12

    aget-wide v9, v4, v3

    mul-double/2addr v9, v5

    sub-double v23, v23, v9

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v9, v2, v3

    mul-double v9, v9, v21

    add-double v9, v23, v9

    neg-double v9, v9

    mul-double v9, v9, v30

    double-to-float v2, v9

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v9, v4, v3

    mul-double/2addr v15, v9

    aget-object v4, v2, v8

    aget-wide v9, v4, v3

    mul-double/2addr v5, v9

    sub-double/2addr v15, v5

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v4, v2, v3

    mul-double/2addr v4, v13

    add-double/2addr v15, v4

    mul-double v4, v15, v30

    double-to-float v2, v4

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    mul-double v17, v17, v4

    aget-object v4, v2, v8

    aget-wide v4, v4, v3

    mul-double v21, v21, v4

    sub-double v17, v17, v21

    const/4 v12, 0x2

    aget-object v2, v2, v12

    aget-wide v4, v2, v3

    mul-double/2addr v13, v4

    add-double v4, v17, v13

    neg-double v4, v4

    mul-double v4, v4, v30

    double-to-float v2, v4

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v8

    aget-wide v5, v4, v12

    aget-object v7, v2, v3

    aget-wide v9, v7, v8

    mul-double v13, v5, v9

    aget-wide v15, v7, v12

    aget-wide v17, v4, v8

    mul-double v19, v15, v17

    sub-double v13, v13, v19

    aget-object v7, v2, v12

    aget-wide v19, v7, v12

    mul-double v21, v19, v9

    aget-wide v23, v7, v8

    mul-double v25, v15, v23

    sub-double v21, v21, v25

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v25, v2, v12

    mul-double v9, v9, v25

    aget-wide v27, v2, v8

    mul-double v15, v15, v27

    sub-double/2addr v9, v15

    mul-double v15, v19, v17

    mul-double v32, v5, v23

    sub-double v15, v15, v32

    mul-double v17, v17, v25

    mul-double v5, v5, v27

    sub-double v17, v17, v5

    mul-double v25, v25, v23

    mul-double v19, v19, v27

    sub-double v25, v25, v19

    aget-wide v4, v4, v3

    mul-double v4, v4, v25

    aget-wide v6, v7, v3

    mul-double v6, v6, v17

    sub-double/2addr v4, v6

    aget-wide v6, v2, v3

    mul-double/2addr v6, v15

    add-double/2addr v4, v6

    neg-double v4, v4

    mul-double v4, v4, v30

    double-to-float v2, v4

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    mul-double v25, v25, v4

    const/4 v12, 0x2

    aget-object v4, v2, v12

    aget-wide v4, v4, v3

    mul-double/2addr v4, v9

    sub-double v25, v25, v4

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v4, v2, v3

    mul-double v4, v4, v21

    add-double v25, v25, v4

    mul-double v4, v25, v30

    double-to-float v2, v4

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v2, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    mul-double v17, v17, v4

    aget-object v4, v2, v8

    aget-wide v4, v4, v3

    mul-double/2addr v9, v4

    sub-double v17, v17, v9

    const/16 v36, 0x3

    aget-object v2, v2, v36

    aget-wide v4, v2, v3

    mul-double/2addr v4, v13

    add-double v4, v17, v4

    neg-double v4, v4

    mul-double v4, v4, v30

    double-to-float v2, v4

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    iget-object v0, v0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v0, v3

    aget-wide v4, v2, v3

    mul-double/2addr v15, v4

    aget-object v2, v0, v8

    aget-wide v4, v2, v3

    mul-double v21, v21, v4

    sub-double v15, v15, v21

    const/4 v12, 0x2

    aget-object v0, v0, v12

    aget-wide v2, v0, v3

    mul-double/2addr v13, v2

    add-double/2addr v15, v13

    mul-double v2, v15, v30

    double-to-float v0, v2

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IF)V

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/Matrix4;->transpose()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 44

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    aget-object v3, v1, v4

    move-object/from16 v5, p1

    iget-object v5, v5, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v5, v4

    aget-wide v7, v6, v4

    move-object/from16 v9, p0

    iget-object v9, v9, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v10, v9, v4

    aget-wide v11, v10, v4

    mul-double/2addr v7, v11

    aget-object v11, v5, v2

    aget-wide v12, v11, v4

    aget-wide v14, v10, v2

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    aget-object v12, v5, v0

    aget-wide v16, v12, v4

    aget-wide v18, v10, v0

    mul-double v16, v16, v18

    add-double v7, v7, v16

    const/4 v13, 0x3

    aget-object v5, v5, v13

    aget-wide v16, v5, v4

    aget-wide v20, v10, v13

    mul-double v16, v16, v20

    add-double v7, v7, v16

    aput-wide v7, v3, v4

    aget-object v7, v1, v2

    aget-wide v16, v6, v4

    aget-object v8, v9, v2

    aget-wide v22, v8, v4

    mul-double v16, v16, v22

    aget-wide v22, v11, v4

    aget-wide v24, v8, v2

    mul-double v22, v22, v24

    add-double v16, v16, v22

    aget-wide v22, v12, v4

    aget-wide v24, v8, v0

    mul-double v22, v22, v24

    add-double v16, v16, v22

    aget-wide v22, v5, v4

    aget-wide v26, v8, v13

    mul-double v22, v22, v26

    add-double v16, v16, v22

    aput-wide v16, v7, v4

    aget-object v16, v1, v0

    aget-wide v22, v6, v4

    aget-object v17, v9, v0

    aget-wide v28, v17, v4

    mul-double v22, v22, v28

    aget-wide v28, v11, v4

    aget-wide v30, v17, v2

    mul-double v28, v28, v30

    add-double v22, v22, v28

    aget-wide v28, v12, v4

    aget-wide v30, v17, v0

    mul-double v28, v28, v30

    add-double v22, v22, v28

    aget-wide v28, v5, v4

    aget-wide v32, v17, v13

    mul-double v28, v28, v32

    add-double v22, v22, v28

    aput-wide v22, v16, v4

    aget-object v22, v1, v13

    aget-wide v28, v6, v4

    aget-object v9, v9, v13

    aget-wide v34, v9, v4

    mul-double v28, v28, v34

    aget-wide v34, v11, v4

    aget-wide v36, v9, v2

    mul-double v34, v34, v36

    add-double v28, v28, v34

    aget-wide v34, v12, v4

    aget-wide v36, v9, v0

    mul-double v34, v34, v36

    add-double v28, v28, v34

    aget-wide v34, v5, v4

    aget-wide v38, v9, v13

    mul-double v34, v34, v38

    add-double v28, v28, v34

    aput-wide v28, v22, v4

    aget-wide v28, v6, v2

    aget-wide v34, v10, v4

    mul-double v28, v28, v34

    aget-wide v40, v11, v2

    mul-double v40, v40, v14

    add-double v28, v28, v40

    aget-wide v14, v12, v2

    mul-double v14, v14, v18

    add-double v28, v28, v14

    aget-wide v14, v5, v2

    mul-double v14, v14, v20

    add-double v28, v28, v14

    aput-wide v28, v3, v2

    aget-wide v14, v6, v2

    aget-wide v28, v8, v4

    mul-double v14, v14, v28

    aget-wide v40, v11, v2

    aget-wide v42, v8, v2

    mul-double v40, v40, v42

    add-double v14, v14, v40

    aget-wide v40, v12, v2

    mul-double v40, v40, v24

    add-double v14, v14, v40

    aget-wide v23, v5, v2

    mul-double v23, v23, v26

    add-double v14, v14, v23

    aput-wide v14, v7, v2

    aget-wide v14, v6, v2

    aget-wide v23, v17, v4

    mul-double v14, v14, v23

    aget-wide v40, v11, v2

    aget-wide v42, v17, v2

    mul-double v40, v40, v42

    add-double v14, v14, v40

    aget-wide v40, v12, v2

    mul-double v40, v40, v30

    add-double v14, v14, v40

    aget-wide v30, v5, v2

    mul-double v30, v30, v32

    add-double v14, v14, v30

    aput-wide v14, v16, v2

    aget-wide v14, v6, v2

    aget-wide v30, v9, v4

    mul-double v14, v14, v30

    aget-wide v40, v11, v2

    aget-wide v42, v9, v2

    mul-double v40, v40, v42

    add-double v14, v14, v40

    aget-wide v40, v12, v2

    mul-double v40, v40, v36

    add-double v14, v14, v40

    aget-wide v36, v5, v2

    mul-double v36, v36, v38

    add-double v14, v14, v36

    aput-wide v14, v22, v2

    aget-wide v14, v6, v0

    mul-double v14, v14, v34

    aget-wide v36, v11, v0

    aget-wide v40, v10, v2

    mul-double v36, v36, v40

    add-double v14, v14, v36

    aget-wide v36, v12, v0

    mul-double v36, v36, v18

    add-double v14, v14, v36

    aget-wide v18, v5, v0

    mul-double v18, v18, v20

    add-double v14, v14, v18

    aput-wide v14, v3, v0

    aget-wide v14, v6, v0

    mul-double v14, v14, v28

    aget-wide v18, v11, v0

    aget-wide v36, v8, v2

    mul-double v18, v18, v36

    add-double v14, v14, v18

    aget-wide v18, v12, v0

    aget-wide v42, v8, v0

    mul-double v18, v18, v42

    add-double v14, v14, v18

    aget-wide v18, v5, v0

    mul-double v18, v18, v26

    add-double v14, v14, v18

    aput-wide v14, v7, v0

    aget-wide v14, v6, v0

    mul-double v14, v14, v23

    aget-wide v18, v11, v0

    aget-wide v25, v17, v2

    mul-double v18, v18, v25

    add-double v14, v14, v18

    aget-wide v18, v12, v0

    aget-wide v42, v17, v0

    mul-double v18, v18, v42

    add-double v14, v14, v18

    aget-wide v18, v5, v0

    mul-double v18, v18, v32

    add-double v14, v14, v18

    aput-wide v14, v16, v0

    aget-wide v14, v6, v0

    mul-double v14, v14, v30

    aget-wide v18, v11, v0

    aget-wide v32, v9, v2

    mul-double v18, v18, v32

    add-double v14, v14, v18

    aget-wide v18, v12, v0

    aget-wide v42, v9, v0

    mul-double v18, v18, v42

    add-double v14, v14, v18

    aget-wide v18, v5, v0

    mul-double v18, v18, v38

    add-double v14, v14, v18

    aput-wide v14, v22, v0

    aget-wide v14, v6, v13

    mul-double v14, v14, v34

    aget-wide v18, v11, v13

    mul-double v18, v18, v40

    add-double v14, v14, v18

    aget-wide v18, v12, v13

    aget-wide v34, v10, v0

    mul-double v18, v18, v34

    add-double v14, v14, v18

    aget-wide v18, v5, v13

    mul-double v18, v18, v20

    add-double v14, v14, v18

    aput-wide v14, v3, v13

    aget-wide v2, v6, v13

    mul-double v2, v2, v28

    aget-wide v14, v11, v13

    mul-double v14, v14, v36

    add-double/2addr v2, v14

    aget-wide v14, v12, v13

    aget-wide v18, v8, v0

    mul-double v14, v14, v18

    add-double/2addr v2, v14

    aget-wide v14, v5, v13

    aget-wide v18, v8, v13

    mul-double v14, v14, v18

    add-double/2addr v2, v14

    aput-wide v2, v7, v13

    aget-wide v2, v6, v13

    mul-double v2, v2, v23

    aget-wide v7, v11, v13

    mul-double v7, v7, v25

    add-double/2addr v2, v7

    aget-wide v7, v12, v13

    aget-wide v14, v17, v0

    mul-double/2addr v7, v14

    add-double/2addr v2, v7

    aget-wide v7, v5, v13

    aget-wide v14, v17, v13

    mul-double/2addr v7, v14

    add-double/2addr v2, v7

    aput-wide v2, v16, v13

    aget-wide v2, v6, v13

    mul-double v2, v2, v30

    aget-wide v6, v11, v13

    mul-double v6, v6, v32

    add-double/2addr v2, v6

    aget-wide v6, v12, v13

    aget-wide v10, v9, v0

    mul-double/2addr v6, v10

    add-double/2addr v2, v6

    aget-wide v4, v5, v13

    aget-wide v6, v9, v13

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v22, v13

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0, v1}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object v0
.end method

.method public blacklist rotate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 1

    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/Object/Quaternion;->setRotation(FFF)V

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist rotate(Lcom/samsung/vekit/Common/Object/Quaternion;)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist rotate(Lcom/samsung/vekit/Common/Type/AxisType;F)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 4

    sget-object v0, Lcom/samsung/vekit/Common/Object/Matrix4$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move p1, v2

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    move p1, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move p1, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    new-instance v0, Lcom/samsung/vekit/Common/Object/Quaternion;

    new-instance v3, Lcom/samsung/vekit/Common/Object/Vector3;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v3, v1, v2, p1}, Lcom/samsung/vekit/Common/Object/Vector3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v3, p2}, Lcom/samsung/vekit/Common/Object/Quaternion;-><init>(Lcom/samsung/vekit/Common/Object/Vector3;F)V

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Object/Quaternion;->getMatrix()Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist scale(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 2

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p1, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist set(IF)V
    .locals 1

    div-int/lit8 v0, p1, 0x4

    rem-int/lit8 p1, p1, 0x4

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object p0, p0, p1

    float-to-double p1, p2

    aput-wide p1, p0, v0

    return-void
.end method

.method public blacklist set(IIF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object p0, p0, p2

    float-to-double p2, p3

    aput-wide p2, p0, p1

    return-void
.end method

.method public blacklist set([F)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x4

    rem-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v2, v3, v2

    aget v3, p1, v0

    float-to-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist set([[D)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v1

    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v3, p1, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v4, v4, v1

    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist toArray()[F
    .locals 9

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v7, v7, v5

    aget-wide v7, v7, v2

    double-to-float v7, v7

    aput v7, v0, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist translate(FFF)Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 p1, 0x1

    invoke-virtual {v0, v2, p1, p2}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    const/4 p1, 0x2

    invoke-virtual {v0, v2, p1, p3}, Lcom/samsung/vekit/Common/Object/Matrix4;->set(IIF)V

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/Object/Matrix4;->multiply(Lcom/samsung/vekit/Common/Object/Matrix4;)Lcom/samsung/vekit/Common/Object/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/Object/Matrix4;->setMatrix(Lcom/samsung/vekit/Common/Object/Matrix4;)V

    return-object p0
.end method

.method public blacklist transpose()Lcom/samsung/vekit/Common/Object/Matrix4;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/samsung/vekit/Common/Object/Matrix4;->matrix:[[D

    aget-object v6, v6, v4

    aget-wide v6, v6, v3

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/vekit/Common/Object/Matrix4;

    invoke-direct {p0, v0}, Lcom/samsung/vekit/Common/Object/Matrix4;-><init>([[D)V

    return-object p0
.end method
