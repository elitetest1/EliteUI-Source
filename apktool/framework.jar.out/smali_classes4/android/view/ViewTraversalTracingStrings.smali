.class Landroid/view/ViewTraversalTracingStrings;
.super Ljava/lang/Object;
.source "ViewTraversalTracingStrings.java"


# instance fields
.field public final blacklist classSimpleName:Ljava/lang/String;

.field public final blacklist onLayout:Ljava/lang/String;

.field public final blacklist onMeasure:Ljava/lang/String;

.field public final blacklist onMeasureBeforeLayout:Ljava/lang/String;

.field public final blacklist requestLayoutStacktracePrefix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewTraversalTracingStrings;->classSimpleName:Ljava/lang/String;

    const-string/jumbo v1, "onMeasureBeforeLayout"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onMeasureBeforeLayout:Ljava/lang/String;

    const-string/jumbo v1, "onMeasure"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewTraversalTracingStrings;->onMeasure:Ljava/lang/String;

    const-string/jumbo v1, "onLayout"

    invoke-direct {p0, v1, v0, p1}, Landroid/view/ViewTraversalTracingStrings;->getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewTraversalTracingStrings;->onLayout:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestLayout "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/view/ViewTraversalTracingStrings;->requestLayoutStacktracePrefix:Ljava/lang/String;

    return-void
.end method

.method private blacklist getTraceName(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Landroid/view/View;->appendId(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 p2, 0x7f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
