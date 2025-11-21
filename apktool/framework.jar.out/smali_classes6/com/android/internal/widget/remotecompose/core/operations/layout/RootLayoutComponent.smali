.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.source "RootLayoutComponent.java"


# instance fields
.field private blacklist mCurrentId:I

.field private blacklist mHasTouchListeners:Z


# direct methods
.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 8

    const/4 v3, -0x1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    return-void
.end method

.method public constructor blacklist <init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V
    .locals 1

    move v0, p2

    move p2, p1

    move-object p1, p6

    move p6, p4

    move p4, v0

    move v0, p5

    move p5, p3

    move p3, p7

    move p7, v0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method private blacklist assignId(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 2

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    iput v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mComponentId:I

    :cond_0
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignId(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "COMPONENT_ID"

    const-string/jumbo v1, "unique id for this component"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Root element for a document. Other components / layout managers are children in the component tree starting fromthis Root component."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "RootLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist assignIds(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mCurrentId:I

    invoke-direct {p0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignId(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    return-void
.end method

.method public blacklist displayHierarchy()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1, p3}, Lcom/android/internal/widget/remotecompose/core/SerializableToString;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public blacklist hasTouchListeners()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    return p0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsMeasure:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setWidth(F)V

    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHeight(F)V

    new-instance v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    invoke-direct {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;-><init>()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    const/4 v3, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    invoke-interface {v1, p1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsMeasure:Z

    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mNeedsRepaint:Z

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iput-object p0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v1, p0, v0

    invoke-interface {p1, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    const-string p0, "RootLayoutComponent"

    invoke-interface {p1, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ROOT ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setHasTouchListeners(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHasTouchListeners:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ROOT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mVisibility:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->mComponentId:I

    invoke-static {p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method
