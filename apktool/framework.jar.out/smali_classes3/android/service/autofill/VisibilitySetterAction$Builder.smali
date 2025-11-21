.class public final Landroid/service/autofill/VisibilitySetterAction$Builder;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDestroyed:Z

.field private final blacklist mVisibilities:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmVisibilities(Landroid/service/autofill/VisibilitySetterAction$Builder;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    return-void
.end method

.method private blacklist throwIfDestroyed()V
    .locals 1

    iget-boolean p0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mDestroyed:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Already called build()"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/VisibilitySetterAction;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/VisibilitySetterAction$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/VisibilitySetterAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/VisibilitySetterAction;-><init>(Landroid/service/autofill/VisibilitySetterAction$Builder;Landroid/service/autofill/VisibilitySetterAction-IA;)V

    return-object v0
.end method

.method public whitelist setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/VisibilitySetterAction$Builder;->throwIfDestroyed()V

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid visibility: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/autofill/VisibilitySetterAction$Builder;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method
