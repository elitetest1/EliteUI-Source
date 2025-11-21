.class final Landroid/widget/Editor$AccessibilitySmartActions;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilitySmartActions"
.end annotation


# instance fields
.field private final blacklist mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            "Landroid/app/RemoteAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddAction(Landroid/widget/Editor$AccessibilitySmartActions;Landroid/app/RemoteAction;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->addAction(Landroid/app/RemoteAction;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/widget/Editor$AccessibilitySmartActions;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$AccessibilitySmartActions;->reset()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/Editor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private blacklist addAction(Landroid/app/RemoteAction;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const v1, 0x10001000

    add-int/2addr v0, v1

    iget-object p0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist reset()V
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method blacklist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist performAccessibilityAction(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/app/RemoteAction;

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p1}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mTextView:Landroid/widget/TextView;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
