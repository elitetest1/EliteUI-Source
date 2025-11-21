.class public Landroid/graphics/MeshSpecification$Attribute;
.super Ljava/lang/Object;
.source "MeshSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/MeshSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOffset:I

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/MeshSpecification$Attribute;->mType:I

    iput p2, p0, Landroid/graphics/MeshSpecification$Attribute;->mOffset:I

    iput-object p3, p0, Landroid/graphics/MeshSpecification$Attribute;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/graphics/MeshSpecification$Attribute;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getOffset()I
    .locals 0

    iget p0, p0, Landroid/graphics/MeshSpecification$Attribute;->mOffset:I

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/graphics/MeshSpecification$Attribute;->mType:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attribute{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/MeshSpecification$Attribute;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/MeshSpecification$Attribute;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/graphics/MeshSpecification$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
