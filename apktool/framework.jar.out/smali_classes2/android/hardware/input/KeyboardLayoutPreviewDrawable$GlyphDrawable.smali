.class final Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;
.super Ljava/lang/Record;
.source "KeyboardLayoutPreviewDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlyphDrawable"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "text",
        "rect",
        "gravity",
        "paint"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Landroid/graphics/RectF;,
        I,
        Landroid/graphics/Paint;
    }
.end annotation


# instance fields
.field private final blacklist gravity:I

.field private final blacklist paint:Landroid/graphics/Paint;

.field private final blacklist rect:Landroid/graphics/RectF;

.field private final blacklist text:Ljava/lang/String;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    iget v1, p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    iget-object p1, p1, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetgravity(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpaint(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrect(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettext(Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "rect",
            "gravity",
            "paint"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    iput p3, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    iput-object p4, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;-><init>(Ljava/lang/String;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist gravity()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->gravity:I

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist paint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public blacklist rect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public blacklist text()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$GlyphDrawable;

    const-string v1, "text;rect;gravity;paint"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
