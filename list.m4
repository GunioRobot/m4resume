define(`build_ordered_list',
`<ol>
$1
</ol>')dnl
define(`build_list_item', `  <li>$1</li> ')dnl
build_ordered_list(build_list_item(`foo'))
