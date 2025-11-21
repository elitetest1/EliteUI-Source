.class Lcom/android/internal/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final blacklist mListener:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor blacklist <init>(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    return-void
.end method


# virtual methods
.method public whitelist onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_0
    return-void
.end method

.method public whitelist onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
