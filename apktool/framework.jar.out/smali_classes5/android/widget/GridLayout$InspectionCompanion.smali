.class public final Landroid/widget/GridLayout$InspectionCompanion;
.super Ljava/lang/Object;
.source "GridLayout$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/GridLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAlignmentModeId:I

.field private blacklist mColumnCountId:I

.field private blacklist mColumnOrderPreservedId:I

.field private blacklist mOrientationId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mRowCountId:I

.field private blacklist mRowOrderPreservedId:I

.field private blacklist mUseDefaultMarginsId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string v1, "alignBounds"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "alignMargins"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "alignmentMode"

    const v4, 0x101037a

    invoke-interface {p1, v0, v4, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mAlignmentModeId:I

    const-string v0, "columnCount"

    const v1, 0x1010377

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnCountId:I

    const-string v0, "columnOrderPreserved"

    const v1, 0x1010378

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnOrderPreservedId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string v1, "horizontal"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "vertical"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "orientation"

    const v2, 0x10100c4

    invoke-interface {p1, v0, v2, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mOrientationId:I

    const-string/jumbo v0, "rowCount"

    const v1, 0x1010375

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowCountId:I

    const-string/jumbo v0, "rowOrderPreserved"

    const v1, 0x1010376

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowOrderPreservedId:I

    const-string/jumbo v0, "useDefaultMargins"

    const v1, 0x1010379

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mUseDefaultMarginsId:I

    iput-boolean v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/GridLayout;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mAlignmentModeId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getAlignmentMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnCountId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnOrderPreservedId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->isColumnOrderPreserved()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mOrientationId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getOrientation()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowCountId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getRowCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowOrderPreservedId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->isRowOrderPreserved()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget p0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mUseDefaultMarginsId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getUseDefaultMargins()Z

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    return-void

    :cond_0
    new-instance p0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/GridLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridLayout$InspectionCompanion;->readProperties(Landroid/widget/GridLayout;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
