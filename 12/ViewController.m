//
//  ViewController.m
//  12
//
//  Created by 潘金强 on 16/8/17.
//  Copyright © 2016年 潘金强. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIImageView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
}
-(void)viewDidAppear:(BOOL)animated{
    
    UIView *aView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    //添加图片
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    self.imageView.image = [UIImage imageNamed:@"avatar_enterprise_vip@2x"];
    [aView addSubview:self.imageView];
    
     self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.tableView.tableHeaderView = aView;
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = @"jjjjjjj";
    
    return cell;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //获取偏移量
    CGPoint offset = scrollView.contentOffset;
    //判断是否改变
    if (offset.y < 0) {
        CGRect rect = self.imageView.frame;
        //我们只需要改变图片的y值和高度即可
        rect.origin.y = offset.y;
       rect.size.height = 200 - offset.y;

       
       self.imageView.clipsToBounds  = YES;

       
        
        _imageView.frame = rect;
    }
}
@end
